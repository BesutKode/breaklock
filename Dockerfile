FROM node:8.5
MAINTAINER William <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app/
COPY package.json package-lock.json ./
COPY . /usr/src/app
RUN npm install

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000
CMD ["npm","run","build"]
