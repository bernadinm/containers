FROM ubuntu:16.04
MAINTAINER Miguel Bernadin

RUN apt-get update
RUN apt-get install -y tar wget git
RUN apt-get install -y default-jdk
RUN apt-get install -y autoconf libtool
RUN apt-get -y install build-essential python-dev libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev
RUN apt-get install -y zlib1g-dev

RUN git clone https://git-wip-us.apache.org/repos/asf/mesos.git
WORKDIR mesos
RUN ./bootstrap
RUN mkdir build
WORKDIR build
RUN ../configure
RUN make
