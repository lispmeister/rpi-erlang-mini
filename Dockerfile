
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Markus Fix <lispmeister@gmail.com>

# Install wget, extra repositories and erlang-mini
ADD install.sh /
RUN /install.sh

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]

EXPOSE 9100-9105 4369