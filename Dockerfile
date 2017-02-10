FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN cd ..
RUN ls -a
RUN mkdir -p /app
RUN cp -rf .dockerenv /app/.dockerenv
RUN cd /app
RUN ls -a
