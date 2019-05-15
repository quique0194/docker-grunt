# Pull base image.
FROM library/node
MAINTAINER Jose Carrillo <quique0194@gmail.com>

# Install Grunt
RUN npm install -g grunt-cli
RUN npm install -g grunt
RUN npm install -g grunt-contrib-concat
RUN npm install -g grunt-contrib-copy
RUN npm install -g grunt-contrib-cssmin
RUN npm install -g grunt-contrib-htmlmin
RUN npm install -g grunt-contrib-uglify

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
