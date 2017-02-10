FROM ubuntu:trusty-20170119

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y wget

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

RUN apt-get update

RUN apt-get -y install xdg-utils \
                       google-chrome-stable \
                       xvfb \
                       x11-xkb-utils \
                       xfonts-100dpi \
                       xfonts-75dpi \
                       xfonts-scalable \
                       xfonts-cyrillic

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jre

RUN apt-get install -y build-essential
RUN apt-get install -y libfontconfig
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g protractor
RUN webdriver-manager update

RUN apt-get autoremove -y && \
    apt-get clean all && \
    rm -rf /tmp/* && \
    rm -rf /var/lig/apt/lists/*


CMD run.sh