FROM node:5

RUN  curl -o /usr/bin/docker "https://get.docker.com/builds/Linux/i386/docker-latest" && chmod +x /usr/bin/docker

# Nodemon that helps in development: https://github.com/remy/nodemon
ENV NODEMON false
ENV APP_HOME /srv/git/repo
ENV APP_MAIN bin/tty.js

RUN npm install -g nodemon

RUN apt-get update && apt-get install asciinema -y && apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]