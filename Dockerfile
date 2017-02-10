FROM node:6.9.5-alpine

ENV DEBIAN_FRONTEND noninteractive

RUN apk update
RUN apk add --no-cache wget

RUN wget --no-check-certificate https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i --force-depends google-chrome-stable_current_amd64.deb
RUN apk add -f

RUN apk add --no-cache xdg-utils \
                       google-chrome-stable \
                       xvfb \
                       x11-xkb-utils \
                       xfonts-100dpi \
                       xfonts-75dpi \
                       xfonts-scalable \
                       xfonts-cyrillic

RUN apk add --no-cache software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apk update
RUN apk add --no-cache openjdk-8-jre

RUN npm install -g protractor
RUN npm install -g gulp
RUN webdriver-manager update

CMD run.sh