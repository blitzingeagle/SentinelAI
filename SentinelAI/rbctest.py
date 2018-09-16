import requests
import json

url = "https://apigw.rbc.com/PersonalBanking/BranchSession/createSession"

headers = {
	"Authorization": "Basic ekJuWUtkQ0tkcmVia045MXdrOUIyVFB6TzVKN0ZjYnI6M0RBWGdJZmUzcjZCT3JMRw=="
}

response = requests.request("GET", url, headers=headers)
print(response.text)
sessionid = json.loads(response.text)["result_content"]
print(sessionid)
url = "https://apigw.rbc.com/PersonalBanking/BranchLocator/findBranches"
postal="M1T2K2"
querystring = {"data":"{%22session_id%22:%22"+sessionid+"%22,%22search%22:%22"+postal+"%22,%22max%22:%223%22}"}
print(querystring)

response = requests.request("GET", url, headers=headers, params=querystring)
print(response.text)
address1 = json.loads(response.text)["result_content"]["params"]["altName1"]
address2 = json.loads(response.text)["result_content"]["params"]["altName2"]
address3 = json.loads(response.text)["result_content"]["params"]["altName3"]
print(address1 + address2 + address3)
##address = json.loads(response.text)["result_content"]["params"]["findAddressA1"]
##distance = json.loads(response.text)["result_content"]["params"]["findDistance1"]
##print("The nearest RBC branch is at " + address + " about " + distance + " kilometers away. It is closed today, a Sunday.")