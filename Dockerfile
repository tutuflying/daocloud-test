FROM ubuntu
MAINTAINER Eric Zhao <yzhao@vwms.cn>

# RUN apt-get update
# RUN apt-get install -y less
RUN ls -a
RUN cd ..
RUN ls -a
RUN cat .dockerenv
