FROM docker.elastic.co/logstash/logstash:6.2.2

COPY ./config /usr/share/logstash/config
COPY ./pipeline /usr/share/logstash/pipeline

USER root

RUN echo "Europe/Paris" > /etc/timezone

USER logstash