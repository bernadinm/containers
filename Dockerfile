FROM ubuntu:16.04
MAINTAINER Miguel Bernadin

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/mesosphere/marathon
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get install -y wget default-jre default-jdk
RUN wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb
RUN dpkg -i sbt-0.13.7.deb
WORKDIR marathon
RUN sbt assembly
EXPOSE 8080
