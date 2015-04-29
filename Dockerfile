FROM google/nodejs

RUN npm install -g node-red

RUN npm install -g node-red-contrib-owfs
RUN npm install -g node-red-contrib-homematic node-red-contrib-fritzbox node-red-contrib-elasticsearch

RUN mkdir /node-red

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
ENTRYPOINT ["node-red"]
CMD ["-u", "/node-red"]