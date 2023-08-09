# Caddy Docker Builder

Welcome to the `caddy-docker-builder` repository! This repository facilitates the automated creation and deployment of a custom Caddy server Docker image with integrated plugins, such as the caddy-tlsredis plugin.

## Requirements

- Docker installed and running on your machine.
- Docker Hub account credentials (especially if you intend to push to a private repository).
- (Optional) `pass` utility set up for securely storing Docker Hub credentials.

## Usage

### Building and Pushing the Docker Image

1. Navigate to the root directory of this repository.

2. Use the provided script to build and push the Docker image:

   ./build.sh

   By default, this script will build the Docker image and push it to Docker Hub using the image name `caddy-with-redis`.

### Pulling the Docker Image

To pull the Docker image that you've built and pushed to Docker Hub:


./pull.sh


## Customizations

Both the `build.sh` and `pull.sh` scripts include variables at the beginning that let you specify the Docker username, image name, and tag/version. Adjust these as necessary for your specific needs.

## Versioning

To ensure flexibility and maintainability, always adjust the version variables in the scripts when making changes or updates. This ensures that older versions of the Docker image remain accessible while new versions can be created and used concurrently.

## Contributing

Contributions, improvements, and issue reports are always welcome! Please submit them directly via GitHub.

## Contact

For further information, queries, or feedback, please reach out to [jcb@appcove.com](mailto:jcb@appcove.com).
