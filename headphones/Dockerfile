FROM ubuntu
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN apt-get install -y -q python git-core
RUN git clone https://github.com/rembo10/headphones.git
RUN cd ./headphones && git checkout $(git tag -l | tail -n1)

ENTRYPOINT ["/usr/bin/python", "headphones/Headphones.py", "--datadir=/mnt/state", "--config=/mnt/state/config.ini", "--nolaunch"]
