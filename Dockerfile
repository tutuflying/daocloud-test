FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

RUN apt-get update
RUN apt-get install tree
RUN ls -a
RUN cd ..
RUN ls -a
RUN cd .dockerenv
RUN ls -a
RUN tree