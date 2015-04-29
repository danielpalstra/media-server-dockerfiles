#!/bin/bash

COUCH=$(sudo docker ps | grep "couchpotato" | awk '{print $1}')
SICK=$(sudo docker ps | grep "sickbeard" | awk '{print $1}')
HEAD=$(sudo docker ps | grep "headphones" | awk '{print $1}')
SAB=$(sudo docker ps | grep "sabnzbd" | awk '{print $1}')
DELUGE=$(sudo docker ps | grep "deluge" | awk '{print $1}')
SONARR=$(sudo docker ps | grep "sonarr" | awk '{print $1}')

echo Stopping docker containers

echo Stopping couchpotato...
docker stop $COUCH

# echo Stopping sickbeard...
# docker stop $SICK

echo Stopping sonarr
docker stop $SONARR

echo Stopping headphones...
docker stop $HEAD

echo Stopping sabnzbd...
docker stop $SAB

echo Stopping deluge...
docker stop $DELUGE

./clean.sh
