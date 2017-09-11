FROM node:4.3.2
MAINTAINER hori75 <guardianangelhori75@gmail.com>

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/chat
