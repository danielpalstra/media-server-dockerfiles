#!/bin/bash
DATADIR=/media/jeff/storage/dockerdata
STORAGEDIR=/media/jeff/nas
TMPDIR=/media/jeff/storage/tmp
DLDIR=/media/jeff/storage/downloads

echo Starting docker containers \n

echo Starting couchpotato...
docker run --name couchpotato -d -p 5050:5050 -v /etc/localtime:/etc/localtime:ro -v $STORAGEDIR:/mnt/nas:rw -v $DLDIR:/mnt/downloads:rw -v $DATADIR/couchpotato:/mnt/state:rw couchpotato-image

echo Starting sickbeard...
docker run --name sickbeard -d -p 8081:8081 -v /etc/localtime:/etc/localtime:ro -v $STORAGEDIR:/mnt/nas:rw -v $DLDIR:/mnt/downloads:rw -v $DATADIR/sickbeard:/mnt/state:rw sickbeard-image

echo Starting headphones...
docker run --name headphones -d -p 8181:8181 -v /etc/localtime:/etc/localtime:ro -v $TMPDIR:/mnt/tmp:rw -v $STORAGEDIR:/mnt/nas:rw -v $DLDIR:/mnt/downloads:rw -v $DATADIR/headphones:/mnt/state:rw headphones-image

echo Starting sabnzbd...
docker run --name sabnzbd --link sickbeard:sb -d -p 8080:8080 -v /etc/localtime:/etc/localtime:ro -v $DLDIR:/mnt/downloads:rw -v $DATADIR/sabnzbd:/mnt/state:rw -v $STORAGEDIR:/mnt/nas:rw -v $TMPDIR:/mnt/tmp:rw sabnzbd-image

echo Starting deluge...
docker run --name deluge -d -p 58846:58846 -p 8112:8112 -v /etc/localtime:/etc/localtime:ro -v $TMPDIR:/mnt/tmp:rw -v $DATADIR/deluge:/mnt/state:rw -v $DLDIR:/mnt/downloads:rw deluge-image
