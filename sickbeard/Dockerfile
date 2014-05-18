FROM ubuntu
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN apt-get install -y -q python-cheetah git-core
RUN git clone git://github.com/midgetspy/Sick-Beard.git sickbeard

VOLUME ["/mnt/state"]
EXPOSE 8081

ENTRYPOINT ["/usr/bin/python", "sickbeard/SickBeard.py", "--datadir=/mnt/state"]
