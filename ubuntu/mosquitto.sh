#!/bin/bash 
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
sudo apt-get install mosquitto mosquitto-clients python-mosquitto 

echo Mosquitto listener is mosquitto_sub -d -t hello/world
echo Mosquitto message by mosquitto_pub -d -t hello/world -m "Hello MQTT"
