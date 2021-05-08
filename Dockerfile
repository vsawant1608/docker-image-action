# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sudo /entrypoint.sh"]