FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN cd ..
RUN ls -a
COPY .dockerenv /
RUN cd /
RUN ls -a
