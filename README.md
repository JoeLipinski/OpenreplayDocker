# OpenReplay Docker

This project provides a custom Docker image for running OpenReplay based on Ubuntu 22.04.

## Attribution

This project is based on OpenReplay. Visit [openreplay.com](https://openreplay.com) for more information.

## Usage

1. Clone the repository.
2. Set environment variables in a `.env` file:
   ```
   DOMAIN_NAME=yourdomain.com
   ```
3. Run with Docker Compose (requires privileged mode for k3s):
   ```
   docker-compose up
   ```

**Note:** This setup runs OpenReplay inside a Docker container with Kubernetes (k3s), which requires privileged access. This is experimental and may not be suitable for production. For production deployments, install OpenReplay directly on an Ubuntu host as per the official documentation.

The image will be published to GitHub Packages on pushes to the main branch.

Please feel free to submit a PR if you have any improvements or suggestions!
