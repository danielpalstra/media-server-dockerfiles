#!/bin/bash

echo stopping supervisor service
service supervisor stop

echo stopping media server images
./stop.sh

echo builing media server images
./build.sh

echo running media server images
./start.sh

echo starting supervisor service
service supervisor start
