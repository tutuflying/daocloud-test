FROM daocloud.io/tutuflyingzhao/test:master-2a61e28
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN npm install bower -g

RUN mkdir -p /app
WORKDIR /app
COPY ./package.json /app/
COPY ./bower.json /app/
RUN bower install --allow-root


CMD ["/usr/bin/supervisord"]