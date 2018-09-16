import json
import time
import paho.mqtt.client as mqtt

client = mqtt.Client("d:6uzx59:RPi:hackthenorth")
client.username_pw_set("use-token-auth", "hackthenorth")
client.connect("6uzx59.messaging.internetofthings.ibmcloud.com", 1883, 500)
payload = { "temp": 20 }
authorized = ["Kevin Zhang"]

def on_subscribe(mqttc, obj, mid, granted_qos):
	print("Subscribed: " + str(mid) + " " + str(granted_qos))

def on_message(mqttc, obj, msg):
    global authorized
    print(msg.topic + " " + str(msg.qos) + " " + str(msg.payload))
    if json.loads(msg.payload.decode("utf-8"))["delete"] == "true":
        authorized.remove(json.loads(msg.payload.decode("utf-8"))["name"])
        print(authorized)
    else:
        authorized.append(json.loads(msg.payload.decode("utf-8"))["name"])
        print(authorized)

client.subscribe("iot-2/cmd/+/fmt/String", qos=0)
client.on_subscribe = on_subscribe
client.on_message = on_message
while True:
	client.publish("iot-2/evt/test/fmt/json", json.dumps(payload))
	client.loop()
	time.sleep(5)
	print("Publishing")

#client.disconnect()