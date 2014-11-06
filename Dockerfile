MAINTAINER Anthony Arellano
FROM ubuntu:14.04.1

# install dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes python build-essential
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:chris-lea/node.js
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes nodejs

# unleash the kraken
RUN DEBIAN_FRONTEND=noninteractive npm -g install yo bower generator-kraken

