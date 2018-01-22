#!/bin/bash

# 安装docker
brew install docker docker-machine docker-compose

# 安装运行docker虚拟机
brew tap codekitchen/dinghy && brew install dinghy
dinghy create --provider vmware

# 安装mysql
brew install mariadb

# 安装本地端口转发
brew install stone

