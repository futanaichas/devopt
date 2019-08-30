#!/bin/bash
# 更新源
apt update
# 安装 git
if ! [ -x "$(command -v git)" ]; then
    echo "install git ..."
    sudo apt install git -y
fi
# 判断路径
if ! [ $(basename `pwd`) = "devopt" ]; then
    git clone "https://github.com/futanaichas/devopt"
    cd devopt
if 

sudo chmod +x ./ubuntu19.04/install_docker.sh && sudo ./ubuntu19.04/install_docker.sh