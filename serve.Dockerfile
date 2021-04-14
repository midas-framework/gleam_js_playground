FROM node:15.14.0

RUN npm i -g sirv-cli

WORKDIR /opt/app