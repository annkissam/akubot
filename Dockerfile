FROM node:0.10-slim

MAINTAINER Octavian Neamtu <octavian.neamtu@annkissam.com>

COPY . /opt/akubot
WORKDIR /opt/akubot

RUN npm install

ENTRYPOINT bin/hubot -a flowdock --name akubot

EXPOSE 8888
