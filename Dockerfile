FROM node:16-buster

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git zsh jq

RUN git config --global user.email "noone@noone.local" && \
    git config --global user.name "No one"

