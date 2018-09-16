from flask import Flask 
from flask_ask import Ask,  request, session, statement, question
from random import randint
import requests
import json
import serial
import json
import time
import paho.mqtt.client as mqtt
from face_recog.facerec_from_webcam import face_search
from TwilioSender import send_sms, make_call

#arduinoSerial = serial.Serial("/dev/ttyACM0", 9600, timeout=1)
app = Flask(__name__) 
ask = Ask(app, '/')

client = mqtt.Client("d:6uzx59:RPi:hackthenorth")
client.username_pw_set("use-token-auth", "hackthenorth")
client.connect("6uzx59.messaging.internetofthings.ibmcloud.com", 1883, 500)

isDoorOpen = 0
authorized = []

def on_subscribe(mqttc, obj, mid, granted_qos):
	print("Subscribed: " + str(mid) + " " + str(granted_qos))

def on_message(mqttc, obj, msg):
	global authorized
	print(msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
	if json.loads(msg.payload.decode("utf-8"))["delete"] == "true":
	    authorized.remove(json.loads(msg.payload.decode("utf-8"))["name"])
	else:
	    authorized.append(json.loads(msg.payload.decode("utf-8"))["name"])
	

#start of Alexa handler
@ask.launch
def launch():	
	return question("Welcome, this is Sentinel!")

@ask.intent("getUpdate") 
def getUpdate():
	client.subscribe("iot-2/cmd/+/fmt/String", qos=0)
	client.on_subscribe = on_subscribe
	client.on_message = on_message
	client.loop()
	
	return question("The sentinel settings have been updated") 

@ask.intent("whereRBC", mapping={'city': 'city'}) 
def whereRBC(city):
	url = "https://apigw.rbc.com/PersonalBanking/BranchSession/createSession"

	headers = {
			"Authorization": "Basic ekJuWUtkQ0tkcmVia045MXdrOUIyVFB6TzVKN0ZjYnI6M0RBWGdJZmUzcjZCT3JMRw=="
	}

	response = requests.request("GET", url, headers=headers)
	sessionid = json.loads(response.text)["result_content"]
	
	if (city != None):	 
		url = "https://apigw.rbc.com/PersonalBanking/BranchLocator/findBranches"

		querystring = {"data":"{%22session_id%22:%22"+sessionid+"%22,%22search%22:%22"+city+"%22,%22max%22:%223%22}"}
		response = requests.request("GET", url, headers=headers, params=querystring)
		address1 = json.loads(response.text)["result_content"]["params"]["altName1"]
		address2 = json.loads(response.text)["result_content"]["params"]["altName2"]
		address3 = json.loads(response.text)["result_content"]["params"]["altName3"]
		
		send_sms("The closest RBC branches to " + city + " is " + address1 + ", " + address2 + ", and " + address3)
		return statement("The closest RBC branches to " + city + " is " + address1 + ", " + address2 + ", and " + address3 + ". This has been texted to you.")
			
		
	else:	
		url = "https://apigw.rbc.com/PersonalBanking/BranchLocator/findBranch"

		querystring = {"data":"{%22session_id%22:%22"+sessionid+"%22,%22postal_code%22:%22N2L3E9%22}"}
		response = requests.request("GET", url, headers=headers, params=querystring)
		address = json.loads(response.text)["result_content"]["params"]["findAddressA1"]
		distance = json.loads(response.text)["result_content"]["params"]["findDistance1"]
		
		send_sms("The nearest RBC branch is at " + address + " about " + distance + " kilometers away. It is closed today, a Sunday.") 
	return statement("The nearest RBC branch is at " + address + " about " + distance + " kilometers away. It is closed today, a Sunday. This has been texted to you.") 

@ask.intent("unlockDoor") 
def doorUnlock():
	global authorized
	global isDoorOpen
	if (isDoorOpen == 1):
		return statement("The door is already open!")

	if (len(set(face_search()).intersection(authorized)) > 0): 
		#arduinoSerial.write(b'o')
		isDoorOpen = 1
		send_sms("Your door was unlocked by " + set(face_search()).intersection(authorized)[0])
		payload = payload = { "Status": "Unlocked!" }
		client.publish("iot-2/evt/test/fmt/json", json.dumps(payload))
		client.loop()
		return statement("The door has been unlocked and opened")
	
	payload = payload = { "Status": "Attempted Unlock!" }
	client.publish("iot-2/evt/test/fmt/json", json.dumps(payload))
	client.loop()
	#make_call()
	return statement("Sorry, your face is not recognized. Please stay away.")

@ask.intent("lockDoor") 
def doorLock():
	global isDoorOpen
	if (isDoorOpen == 1):
		isDoorOpen = 0
		
		payload = payload = { "Status": "Locked!" }
		client.publish("iot-2/evt/test/fmt/json", json.dumps(payload))
		client.loop()
	
	return statement("Door has been locked")

if __name__ == "__main__":
	app.run(debug=True) 


