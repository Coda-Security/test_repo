# 1. Choose an ancient, unmaintained base image tag
FROM node:10.14.2-jessie

# 2. Add unpatched system packages and outdated applications
RUN apt-get update && apt-get install -y \
    openssh-server

# 3. Expose unnecessary ports
EXPOSE 22

# 4. Run as root
USER root
