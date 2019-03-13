FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libdb-dev tzdata
WORKDIR /root
CMD tar xf ruby-* && cd ruby-*/ && ./configure --prefix=/root/local && make && make check && make install
