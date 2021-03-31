FROM ubuntu:focal

COPY installdocker.sh /tmp/installdocker.sh
RUN chmod +x /tmp/installdocker.sh && /tmp/installdocker.sh && rm /tmp/installdocker.sh

RUN apt update && apt install -y python3-pip && pip3 install docker-compose
RUN echo $(docker --version) &&  echo $(docker-compose --version)
