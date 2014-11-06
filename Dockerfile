FROM ubuntu:14.04.1
MAINTAINER anthony07

# install dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN apt-get install -y --force-yes software-properties-common build-essential python

# install nodejs
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN apt-get install -y --force-yes nodejs

# unleash the kraken
RUN npm install -g yo bower generator-kraken
WORKDIR ~/
