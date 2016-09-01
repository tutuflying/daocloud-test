FROM daocloud.io/tutuflyingzhao/test:master-a509205
MAINTAINER Eric Zhao <yzhao@vwms.cn>

COPY ./* /var/www/
RUN ls /usr/share/nginx/html