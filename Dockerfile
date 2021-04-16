FROM node:lts-alpine3.13

RUN mkdir /root_config

ENV PATH /root_config/node_modules/.bin:$PATH

WORKDIR /root_config

COPY package.json yarn.lock ./

RUN yarn install --silent