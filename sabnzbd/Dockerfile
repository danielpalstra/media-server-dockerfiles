FROM ubuntu:latest
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN locale-gen en_US en_US.UTF-8

RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse" >> /etc/apt/sources.list

RUN apt-get -q update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:jcfp/ppa
RUN apt-get -q update
RUN apt-mark hold initscripts udev plymouth mountall

RUN apt-get install -qy --force-yes sabnzbdplus sabnzbdplus-theme-classic sabnzbdplus-theme-mobile sabnzbdplus-theme-plush par2 python-yenc unrar unzip 

ENTRYPOINT ["/usr/bin/sabnzbdplus", "-b", "0", "-f", "/mnt/state/sabnzbd.ini", "--server", ":8080"]
