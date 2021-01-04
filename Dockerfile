FROM kibana:6.6.1

USER root

RUN yum install -y wget;

USER kibana

RUN cd /tmp; \
    wget https://github.com/lmangani/sentinl/releases/download/tag-6.6.0-0/sentinl-v6.6.1.zip; \
    cd /usr/share/kibana/bin; \
    kibana-plugin install file:///tmp/sentinl-v6.6.1.zip; \
    rm -rf /tmp/sentinl-v6.6.1.zip;