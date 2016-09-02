FROM daocloud.io/tutuflyingzhao/test:master-a509205
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN ls /usr/share/nginx/html

CMD ["/usr/bin/supervisord"]
