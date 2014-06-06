#!/bin/bash
apt-get install -y supervisor
cp ./mediastart.conf /etc/supervisor/conf.d
supervisorctl reread
supervisorctl update
supervisorctl
sh -c "echo 'DOCKER_OPTS=\"-r=false\"' > /etc/default/docker.io"
sh -c "echo 'DOCKER_OPTS=\"-r=false\"' > /etc/default/docker"
