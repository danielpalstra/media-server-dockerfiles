#!/bin/bash
apt-get install -y supervisor
cp ./mediastart.conf /etc/supervisor/conf.d
sh -c "echo 'DOCKER_OPTS=\"-r=false\"' > /etc/default/docker"
supervisorctl reread
supervisorctl update
supervisorctl
