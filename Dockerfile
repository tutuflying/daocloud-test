FROM daocloud.io/library/nginx
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN apt-get update
RUN apt-get install -y nodejs npm git
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install bower -g

WORKDIR /var/www
COPY ./package.json /var/www/
COPY ./bower.json /var/www/
RUN bower install --allow-root
RUN service nginx start