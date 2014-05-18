#!/bin/bash
cp ./mediastart.conf /etc/init/
sh -c "echo 'DOCKER_OPTS=\"-r=false\"' > /etc/default/docker"
