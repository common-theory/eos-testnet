FROM eosio/eos:v1.2.5
MAINTAINER Chance Hudson

RUN mkdir /data

COPY ./config.ini /config.ini
COPY ./genesis.json /genesis.json
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
