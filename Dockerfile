FROM node:8.5
MAINTAINER hori75 <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /urs/src/app

COPY package.json /usr/src/app/
RUN cd /usr/src/app/
RUN npm install
RUN node --version

COPY . /usr/src/app

EXPOSE 3000
CMD ["npm","start"]
