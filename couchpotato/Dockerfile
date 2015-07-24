FROM ubuntu
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN apt-get install -y -q python git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git
RUN cd ./CouchPotatoServer && git checkout $(git tag -l | tail -n1)

ENTRYPOINT ["/usr/bin/python", "CouchPotatoServer/CouchPotato.py", "--data_dir=/mnt/state", "--config_file=/mnt/state/settings.conf"]
