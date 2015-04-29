FROM google/nodejs

RUN npm install -g node-red

RUN npm install -g node-red-contrib-owfs

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
ENTRYPOINT ["node-red"]