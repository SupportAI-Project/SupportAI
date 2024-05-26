# SupportAI Project

This project consists of three submodules: SupportAI-Frontend, SupportAI-Backend, and SupportAI-Model-AI. We use Docker for easy setup and teardown. The `make.sh` script provides a set of commands to manage the project.

## Commands

### `./make.sh install`

This command installs the necessary dependencies for the Frontend and Backend. It navigates into each directory, runs `npm install`, and then navigates back to the root directory.

### `./make.sh init` - OPTIONAL

This command initializes the project by adding the necessary git submodules. It adds the Frontend, Backend, and Model-AI repositories as submodules to the current git repository.

### `./make.sh up`

This command starts the Docker containers in detached mode using `docker-compose up -d`.

### `./make.sh down`

This command stops and removes the Docker containers using `docker-compose down`.

### `./make.sh reload`

This command reloads the Docker containers.

### `./make.sh logs`

This command shows the logs of the Docker containers using `docker-compose logs -f`.

## Usage

To use any of the commands, navigate to the root directory of the project in your terminal and type `./make.sh` followed by the command. For example, to install the dependencies, you would type `./make.sh install`.
