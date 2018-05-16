FROM docker.elastic.co/kibana/kibana-oss:6.2.2

COPY ./config/kibana.yml /usr/share/kibana/config/kibana.yml

USER root

RUN echo "Europe/Paris" > /etc/timezone

USER kibana
