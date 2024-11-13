# Dockerfile for running the web server with Python

# Use an official Python runtime as a base image
FROM faucet/python3


# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . /usr/src/app

# Expose the port the app runs on
EXPOSE 9110

# Set the default command to run the Python HTTP server
CMD [ "python3", "-m", "http.server", "9110" ]

# Set Docker to restart the container automatically
LABEL com.opencontainers.image.restartPolicy="always"

