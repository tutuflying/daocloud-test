FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install -y git nodejs npm nginx python-pip
RUN sudo npm cache clean -f
RUN sudo npm install -g n
RUN sudo n stable
RUN sudo ln -s /usr/local/n/versions/node/6.4.0/bin/node /usr/bin/node
RUN sudo npm install -g gulp bower