# Container image that runs your code
FROM alpine:3.10

WORKDIR /opt/hello

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /opt/hello/entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sudo","entrypoint.sh"]