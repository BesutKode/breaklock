FROM node:8.5
MAINTAINER William <guardianangelhori75@gmail.com>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app/
COPY package.json package-lock.json ./
RUN npm install

COPY . /usr/src/app

ENV NODE_ENV=production
ENV PORT=3000

CMD ["npm","run","build"]
EXPOSE 3000

