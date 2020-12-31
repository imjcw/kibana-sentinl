FROM kibana:6.5.2

USER root

RUN yum install -y wget;

USER kibana

RUN cd /tmp; \
    wget https://github.com/lmangani/sentinl/releases/download/tag-6.5.0-0/sentinl-v6.5.2.zip; \
    cd /usr/share/kibana/bin; \
    kibana-plugin install file:///tmp/sentinl-v6.5.2.zip; \
    rm -rf /tmp/sentinl-v6.5.2.zip;
