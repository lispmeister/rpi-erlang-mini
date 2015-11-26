
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Markus Fix <lispmeister@gmail.com>

RUN apt-get update

# Install wget, extra repositories and erlang-mini
ADD install.sh /
RUN /install.sh

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
