FROM kibana:6.4.0

USER root

RUN yum install -y wget;

USER kibana

RUN cd /tmp; \
    wget https://github.com/lmangani/sentinl/releases/download/tag-6.4.2-0/sentinl-v6.4.0.zip; \
    cd /usr/share/kibana/bin; \
    kibana-plugin install file:///tmp/sentinl-v6.4.0.zip; \
    rm -rf /tmp/sentinl-v6.4.0.zip;