FROM daocloud.io/library/nginx
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

RUN npm install bower -g

RUN mkdir -p /app
WORKDIR /app
COPY ./package.json /app/
COPY ./bower.json /app/
RUN bower install --allow-root
RUN service nginx start


CMD ["/usr/bin/supervisord"]