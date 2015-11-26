
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Markus Fix <lispmeister@gmail.com>

# Prepare extra repositories
RUN echo "deb http://packages.erlang-solutions.com/debian wheezy contrib" >> /etc/apt/sources.list.d/erlang-solutions.list
RUN wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
RUN apt-key add erlang_solutions.asc

# Install dependencies
RUN apt-get update && apt-get install -y \
    erlang-mini
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
