FROM ubuntu:latest
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN locale-gen en_US en_US.UTF-8

RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse" >> /etc/apt/sources.list

RUN apt-get -q update
RUN apt-get -y install software-properties-common
RUN apt-get -yq upgrade
RUN apt-mark hold initscripts udev plymouth mountall

RUN apt-get install -qy --force-yes deluged deluge-web
ADD start.sh /start.sh

VOLUME ["/mnt/state", "/mnt/tmp", "/mnt/downloads"]

# Torrent port
EXPOSE 53160
EXPOSE 53160/udp
# WebUI
EXPOSE 8112
# Daemon
EXPOSE 58846

CMD ["/start.sh"]
