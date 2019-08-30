#!/bin/bash
# 更新源
apt update
# 安装 git
if ! [ -x "$(command -v git)" ]; then
    echo "install git ..."
    apt install git -y
fi
# 判断路径
if ! [ $(basename `pwd`) = "devopt" ]; then
    if [ ! -d "devopt" ];then
        git clone https://github.com/futanaichas/devopt.git
    fi
    cd devopt    
fi
# 更新
git pull
# 安装模块
bash ./ubuntu19.04/install_docker.sh
bash ./ubuntu19.04/install_nginx.sh
bash ./ubuntu19.04/install_mysql.sh
bash ./ubuntu19.04/install_redis.sh
# 显示状态
docker ps -a