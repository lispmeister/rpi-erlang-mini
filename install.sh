#!/usr/bin/env bash

# install wget tool
apt-get update && apt-get install -y \
    wget \
    --no-install-recommends

# add Erlang Solutions repository
echo "deb http://packages.erlang-solutions.com/debian wheezy contrib" >> /etc/apt/sources.list.d/erlang-solutions.list
wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
apt-key add erlang_solutions.asc
rm erlang_solutions.asc

# install erlang-mini
apt-get update && apt-get install -y \
    erlang-mini \
    --no-install-recommends

# cleanup
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/src/*
