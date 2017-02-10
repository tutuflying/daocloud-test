FROM node:6.9.5-alpine

ENV DEBIAN_FRONTEND noninteractive

RUN apk update
RUN apk add --no-cache wget

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apk-key add - 
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apk/sources.list.d/google.list'

RUN apk update

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