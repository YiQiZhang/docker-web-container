FROM node:14.18.0
MAINTAINER jerry <jrzyq111@gmail.com>

RUN apt-get update && apt-get install -y \
	sysstat

RUN npm install pomelo --registry=https://registry.npm.taobao.org -g

# clean
RUN apt-get clean \
	&& apt-get autoclean \
	&& rm -rf /var/lib/apt/lists/*

