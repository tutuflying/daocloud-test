FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN cd ..
RUN ls -a
RUN cp -rf .dockerenv /
RUN cd /
RUN ls -a
