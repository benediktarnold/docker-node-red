FROM google/nodejs

RUN apt-get install unzip
ADD https://github.com/node-red/node-red/archive/0.9.1.zip 0.9.1.zip
RUN unzip /0.9.1.zip -d /opt
WORKDIR /opt/node-red-0.9.1

# install node-red
RUN npm install --production
RUN npm install node-red-contrib-owfs

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
ENTRYPOINT ["node"]
CMD ["red.js"]