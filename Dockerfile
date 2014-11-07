FROM ubuntu:trusty
MAINTAINER anthony07

# install dependencies
RUN apt-get update; \
  apt-get install -y --force-yes software-properties-common build-essential python

# install nodejs
RUN add-apt-repository -y ppa:chris-lea/node.js; \
	apt-get update; \
	apt-get install -y --force-yes nodejs

# unleash the kraken
RUN npm install -g yo bower generator-kraken

# add non-root user to make yeoman run as it should
RUN adduser --disabled-password --gecos "" nodeuser; \
	echo "nodeuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/nodeuser
USER nodeuser
WORKDIR /home/nodeuser

# expose the port
EXPOSE 8080

# default command
CMD ["/bin/bash"]
