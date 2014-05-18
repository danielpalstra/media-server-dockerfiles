#!/bin/bash
SICKBEARD="sickbeard"
COUCHPOTATO="couchpotato"
HEADPHONES="headphones"
SAB="sabnzbd"

echo Building docker containers

echo Building couchpotato...
docker build -t $COUCHPOTATO $(pwd)/$COUCHPOTATO

echo Building sickbeard...
docker build -t $SICKBEARD $(pwd)/$SICKBEARD

echo Building headphones
docker build -t $HEADPHONES $(pwd)/$HEADPHONES

echo Building sabnzbd
docker build -t $SAB $(pwd)/$SAB
