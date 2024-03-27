# Pull base image.
FROM node:12.15.0-alpine3.11
MAINTAINER Jose Carrillo <quique0194@gmail.com>

# Install Grunt
RUN npm install -g grunt-cli
RUN npm install grunt
RUN npm install grunt-contrib-concat
RUN npm install grunt-contrib-copy
RUN npm install grunt-contrib-cssmin
RUN npm install grunt-contrib-htmlmin
RUN npm install grunt-contrib-uglify
RUN npm install grunt-contrib-watch

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
