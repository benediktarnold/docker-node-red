FROM google/nodejs

WORKDIR /opt
ADD https://github.com/node-red/node-red/releases/download/0.11.1/node-red-0.11.1.zip /opt/node-red-0.11.1.zip
RUN apt-get update && apt-get install unzip -y
RUN unzip node-red-0.11.1.zip && \
  mv node-red-0.11.1 node-red && \
	cd node-red && \
	npm install --production
WORKDIR /opt/node-red

RUN npm install node-red-contrib-owfs node-red-contrib-elasticsearch sonos
ADD settings.js /opt/node-red/settings.js

RUN mkdir /node-red

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
ENTRYPOINT ["node"]
CMD ["red.js","-u", "/node-red"]
