FROM daocloud.io/library/nginx
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN service nginx start


CMD ["/usr/bin/supervisord"]