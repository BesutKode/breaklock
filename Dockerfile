FROM node:8.5
MAINTAINER William <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app/
COPY package.json package-lock.json ./
COPY . /usr/src/app
RUN npm install
RUN npm install http-server -g
RUN npm run build

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000
CMD ["http-server","./","-p","3000"]
