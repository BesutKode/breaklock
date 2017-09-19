FROM node:8.5
MAINTAINER hori75 <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app/

COPY package.json /usr/src/app
RUN npm install

COPY . /usr/src/app

EXPOSE 3000
CMD ["npm","run build"]
