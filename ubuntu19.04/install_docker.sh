if ! [ -x "$(command -v docker)" ]; then
    echo "install docker ..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge test"
    apt-get update
    apt-cache policy docker-ce
    apt-get install -y docker-ce
fi

docker network create futanaicha