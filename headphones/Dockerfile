FROM ubuntu
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN apt-get install -y -q python git-core
RUN git clone https://github.com/rembo10/headphones.git

VOLUME ["/mnt/state", "/mnt/downloads", "/mnt/nas"]
EXPOSE 8181

ENTRYPOINT ["/usr/bin/python", "headphones/Headphones.py", "--datadir=/mnt/state", "--config=/mnt/state/config.ini", "--nolaunch"]
