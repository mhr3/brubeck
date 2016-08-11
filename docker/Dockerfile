FROM ubuntu:14.04

RUN apt-get update && apt-get -y install build-essential libjansson-dev libssl-dev libmicrohttpd-dev git jq

RUN git clone https://github.com/mhr3/brubeck.git

RUN cd brubeck && ./script/bootstrap

ADD config.template.json /config.template.json

ADD run_brubeck.sh /run_brubeck.sh

EXPOSE 8080 8125/udp

ENTRYPOINT ["/run_brubeck.sh"]
