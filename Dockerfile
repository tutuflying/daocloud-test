FROM selenium/standalone-chrome
RUN sudo apt-get update
RUN sudo apt-get install -y git nodejs npm nginx python-pip
RUN sudo npm cache clean -f
RUN sudo npm install -g n
RUN sudo n 6.9.2
RUN sudo npm install -g protractor
RUN sudo mkdir -p /wolf
COPY package.json /wolf/
WORKDIR /wolf
RUN sudo npm install