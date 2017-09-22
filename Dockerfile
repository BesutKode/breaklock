FROM node:8.5
MAINTAINER William <guardianangelhori75@gmail.com>

RUN npm install webpack -g
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app/
COPY package.json package-lock.json ./
RUN npm install
RUN npm run build

COPY . /usr/src/app

ENV NODE_ENV=production
ENV PORT=3000

CMD ["/usr/src/app/", "./index.html"]
EXPOSE 3000

