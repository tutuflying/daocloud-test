FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN ls -a
RUN cd ..
RUN ls -a
RUN less .dockerenv
