
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Markus Fix <lispmeister@gmail.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    erlang-mini
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
