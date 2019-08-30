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
        cd devopt
    else
        cd devopt && git pull
    fi
fi 

bash ./ubuntu19.04/install_docker.sh
