#!/bin/bash

chmod +x "$0"

# Define functions for installing dependencies, starting, stopping, and reloading the Docker containers, and viewing logs
function install() {
    cd SupportAI-Frontend || exit
    npm install
    cd ..

    cd SupportAI-Backend || exit
    npm install
    cd ..

    cd SupportAI-Model-AI || exit
    npm install
    cd ..
}

function update() {
    cd SupportAI-Frontend || exit
    npm update
    cd ..

    cd SupportAI-Backend || exit
    npm update
    cd ..

    cd SupportAI-Model-AI || exit
    npm update
    cd ..
}

function build {
    docker-compose build
}

function force-build {
    docker-compose up -d --force-recreate --renew-anon-volumes
}

# Define functions for starting, stopping, and reloading the Docker containers
function init() {
  git submodule add https://github.com/SupportAI-Project/SupportAI-Backend
  git submodule add https://github.com/SupportAI-Project/SupportAI-Frontend
  git submodule add https://github.com/SupportAI-Project/SupportAI-Model-AI
}

function up() {
    docker-compose up -d
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
    update)
        update
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
    init)
        init
        ;;
    build)
        build
        ;;
    force-build)
        force-build
        ;;
    *)
        echo "Usage: ./make.sh {install|up|down|reload|logs}"
        exit 1
esac
