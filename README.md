# SupportAI Project

This project consists of three submodules: SupportAI-Frontend, SupportAI-Backend, and SupportAI-Model-AI. We use Docker for easy setup and teardown. The `make.sh` script provides a set of commands to manage the project.

## Demo Video
[Final Project - Demo Video](https://www.canva.com/design/DAGoQOVuP8E/FKLiNfg6HMvnT_mJivBD-Q/watch?utm_content=DAGoQOVuP8E&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h6844b85385)

## Features

- Generate, edit, and finalize guides based on customer interactions.
- User authentication and authorization using NestJS Passport.
- Real-time chat functionality with WebSocket and Socket.io.
- Efficient data handling and database interactions using TypeORM.
- Deployment using Docker and Docker Compose.
- Integration with a PostgreSQL database.
- Comprehensive unit and end-to-end (E2E) testing with Jest.
- Scalable and modular architecture.

## Technologies Used

- **Frontend:** NextJs, React, TypeScript, TanStack Query
- **Backend:** NestJS, TypeORM, Passport for authentication
- **Database:** PostgreSQL
- **AI Model:** Custom AI service
- **Deployment:** Docker, Docker Compose
- **Testing:** Jest (Unit and E2E)
- **Project Management:** Jira

## Setup and Installation

### Prerequisites

- [Node.js](https://nodejs.org/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started
Clone the repository:
```bash
git clone --recurse-submodules https://github.com/SupportAI-Project/SupportAI.git
```
## Commands
This command installs the necessary dependencies for the Frontend and Backend:
 ```bash
 ./make.sh install
```
This command initializes the project by adding the necessary git submodules. It adds the Frontend, Backend, and Model-AI repositories as submodules to the current git repository:
 ```bash
 ./make.sh init
```
This command starts the Docker containers in detached mode:
 ```bash
 ./make.sh up
```

This command stops and removes the Docker containers
 ```bash
 ./make.sh down
```
This command reloads the Docker containers.
 ```bash
 ./make.sh reload
```
This command shows the logs of the Docker containers

 ```bash
 ./make.sh logs
```

## Usage

To use any of the commands, navigate to the root directory of the project in your terminal and type `./make.sh` followed by the command. For example, to install the dependencies, you would type `./make.sh install`.
