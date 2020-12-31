FROM kibana:7.6.1

USER root

RUN yum install -y wget;

USER kibana

RUN cd /tmp; \
    wget https://github.com/lmangani/sentinl/releases/download/7.6.1/sentinl-v7.6.1.zip; \
    cd /usr/share/kibana/bin; \
    kibana-plugin install file:///tmp/sentinl-v7.6.1.zip; \
    rm -rf /tmp/sentinl-v7.6.1.zip;
