#!/bin/bash

BASEDIR=/home/pi/Desktop/SentinelAI/
SUBDOMAIN=sentinelai # For use with custom ngrok subdomains
echo "Starting"
echo "----------$(date)----------" >> ${BASEDIR}SentinelAI/pythonlogs.log
echo "----------$(date)----------" >> ${BASEDIR}SentinelAI/mavenlogs.log
(cd ${BASEDIR}SentinelAI; python SentinelAI.py) &
npm start --prefix ${BASEDIR}alexa-avs-sample-app/samples/companionService --cwd ${BASEDIR}alexa-avs-sample-app/samples/companionService &
(sleep 5; sudo mvn -f ${BASEDIR}alexa-avs-sample-app/samples/javaclient exec:exec) &
(sleep 20; cd ${BASEDIR}alexa-avs-sample-app/samples/wakeWordAgent/src; ./wakeWordAgent -e kitt_ai) & 
# Omit the -subdomain flag and "> /dev/null" to output ngrok url for Alexa endpoint if not using a custom subdomain
(${BASEDIR}ngrok http -subdomain=${SUBDOMAIN} 5000 > /dev/null)
echo "Up and running!"
