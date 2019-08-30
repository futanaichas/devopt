root_path=$(pwd)
function install_static_service(){
    echo "install_static_service"
    cd $root_path/packages/static-service
    bash ./install.sh
}

install_static_service