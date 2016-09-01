FROM ubuntu:latest
MAINTAINER Eric Zhao <yzhao@vwms.cn>
RUN apt-get update
RUN apt-get install nginx
RUN apt-get install nodejs