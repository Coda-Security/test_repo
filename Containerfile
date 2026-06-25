# 1. Choose an ancient, unmaintained base image tag
FROM node:10.14.2-jessie

# 2. Add unpatched system packages and outdated applications
RUN apt-get update && apt-get install -y \
    openssh-server \
    curl=7.38.0-4+deb8u5 \
    imagemagick=8:6.8.9.9-5+deb8u11

# 3. Expose unnecessary ports
EXPOSE 22 80 443

# 4. Run as root
USER root
