FROM node:carbon-alpine

LABEL maintainer="NodeFactory <info@nodefactory,io>"

RUN apk --virtual dependencies add --update git python make g++ gcc && \
  rm -rf /tmp/* /var/cache/apk/*

WORKDIR /usr/app

RUN git clone -b 2018_3_updates https://github.com/oraclize/ethereum-bridge.git .

RUN yarn install --frozen-lockfile --prod --non-interactive

RUN apk del dependencies && yarn cache clean

ENTRYPOINT ["node", "bridge"]