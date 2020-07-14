# Dockerfile
FROM node:12.16.2-alpine

ENV METEOR_ALLOW_SUPERUSER=true
ENV ROOT_URL="http://localhost:3000"

RUN apt-get install -y curl
RUN curl "https://install.meteor.com/" | /bin/sh


COPY . /usr/src/schedule
WORKDIR /usr/src/schedule

RUN apk add — update build-base python


RUN chmod -R 700 /usr/src/schedule/.meteor/local
RUN meteor npm install

ENV PORT 80
ENV ROOT_URL http://127.0.0.1

EXPOSE 3000
CMD ["npm", "start"]
CMD node ./main.js
