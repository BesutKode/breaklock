FROM node:8.5
MAINTAINER William <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app/

COPY package.json package-lock.json ./
RUN npm install

COPY . /usr/src/app

EXPOSE 3000
CMD ["npm","run","build"]
