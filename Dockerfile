FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install -y git nodejs npm nginx python-pip
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
RUN ln -s /usr/local/n/versions/node/6.4.0/bin/node /usr/bin/node
RUN npm install -g gulp bower