#!/bin/bash

# Define functions for installing dependencies, starting, stopping, and reloading the Docker containers, and viewing logs
function install() {
    cd SupportAI-Frontend || exit
    npm install
    cd ..

    cd SupportAI-Backend || exit
    npm install
    cd ..
}

# Define functions for starting, stopping, and reloading the Docker containers
function up() {
    docker-compose up -d --build
}

function down() {
    docker-compose down
}

function reload() {
    down
    up
}
function logs() {
    docker-compose logs -f
}

# Check the first argument to the script
case $1 in
    install)
        install
        ;;
    up)
        up
        ;;
    down)
        down
        ;;
    reload)
        reload
        ;;
    logs)
        logs
        ;;
    *)
        echo "Usage: ./make.sh {install|up|down|reload|logs}"
        exit 1
esac
