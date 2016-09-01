FROM daocloud.io/library/nginx
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN apt-get update
RUN apt-get install -y nodejs npm

RUN npm install bower -g

RUN mkdir -p /var/www
WORKDIR /var/www
COPY ./package.json /var/www/
COPY ./bower.json /var/www/
RUN bower install --allow-root
RUN service nginx start