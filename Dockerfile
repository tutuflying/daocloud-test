FROM daocloud.io/library/ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN apt-get update
RUN apt-get install -y nginx nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install bower -g

WORKDIR /var/www
COPY ./package.json /var/www/
COPY ./bower.json /var/www/
RUN bower install --allow-root
RUN service nginx start