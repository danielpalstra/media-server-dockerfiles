#!/bin/bash
SICKBEARD="sickbeard"
COUCHPOTATO="couchpotato"
HEADPHONES="headphones"
SAB="sabnzbd"
DELUGE="deluge"

echo Building docker containers

echo Building couchpotato...
docker build --no-cache -t $COUCHPOTATO-image $(pwd)/$COUCHPOTATO

echo Building sickbeard...
docker build --no-cache -t $SICKBEARD-image $(pwd)/$SICKBEARD

echo Building headphones...
docker build --no-cache -t $HEADPHONES-image $(pwd)/$HEADPHONES

echo Building sabnzbd...
docker build --no-cache -t $SAB-image $(pwd)/$SAB

echo Building deluge...
docker build --no-cache -t $DELUGE-image $(pwd)/$DELUGE
