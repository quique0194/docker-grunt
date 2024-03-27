# Pull base image.
FROM node:12.15.0-alpine3.11
MAINTAINER Jose Carrillo <quique0194@gmail.com>

# Define working directory.
WORKDIR /workdir

# Install Grunt
RUN npm install -g grunt-cli \
    && npm install grunt \
    && npm install grunt-contrib-concat \
    && npm install grunt-contrib-copy \
    && npm install grunt-contrib-cssmin \
    && npm install grunt-contrib-htmlmin \
    && npm install grunt-contrib-uglify \
    && npm install grunt-contrib-uglify-es \
    && npm install grunt-contrib-watch \
    && npm install grunt-env

# Define default command.
CMD ["sh"]
