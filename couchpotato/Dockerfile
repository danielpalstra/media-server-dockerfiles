FROM ubuntu
MAINTAINER Jeff Sturgis <jeffsturgis@gmail.com>

RUN apt-get install -y -q python git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git

VOLUME ["/mnt/state", "/mnt/downloads", "/mnt/nas"]
EXPOSE 5050

ENTRYPOINT ["/usr/bin/python", "CouchPotatoServer/CouchPotato.py", "--data_dir=/mnt/state", "--config_file=/mnt/state/settings.conf"]
