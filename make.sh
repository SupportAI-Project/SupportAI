#!/bin/bash

# Navigate to the frontend directory and install dependencies
cd SupportAI-Frontend || exit
npm install

cd ..

# Navigate to the backend directory and install dependencies
cd SupportAI-Backend || exit
npm install

cd ..

# Add execute permissions to the script
chmod +x make.sh

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

# Check the first argument to the script
case $1 in
    up)
        up
        ;;
    down)
        down
        ;;
    reload)
        reload
        ;;
    *)
        echo "Usage: ./make.sh {up|down|reload}"
        exit 1
esac
