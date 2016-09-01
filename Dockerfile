FROM daocloud.io/library/node
MAINTAINER Eric Zhao <yzhao@vwms.cn>
RUN npm install bower -g
RUN bower install