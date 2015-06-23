FROM google/nodejs

WORKDIR /opt
ADD https://github.com/node-red/node-red/releases/download/0.10.10/node-red-0.10.10.zip /opt/node-red-0.10.10.zip
RUN apt-get update && apt-get install unzip -y
RUN unzip node-red-0.10.10.zip && \
	cd node-red-0.10.10 && \
	npm install --production
WORKDIR /opt/node-red-0.10.10

RUN npm install node-red-contrib-owfs node-red-contrib-elasticsearch sonos

RUN mkdir /node-red

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
ENTRYPOINT ["node"]
CMD ["red.js","-u", "/node-red"]