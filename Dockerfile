FROM daocloud.io/library/ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>
RUN apt-get update
RUN apt-get install nodejs
RUN npm install bower -g

RUN mkdir -p /app
WORKDIR /app
COPY ./package.json /app/
COPY ./bower.json /app/
RUN bower install --allow-root

CMD ["/usr/bin/supervisord"]