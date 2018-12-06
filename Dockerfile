FROM node:10-slim

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y net-tools dnsutils vim procps htop netcat

RUN mkdir -p /app

WORKDIR /app

COPY ./ ./

RUN yarn install --frozen-lockfile

CMD yarn run vuepress dev

