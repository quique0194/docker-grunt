# Pull base image.
FROM node:20.12.0-alpine3.18

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

RUN apk add --no-cache aws-cli

# Define default command.
CMD ["sh"]
