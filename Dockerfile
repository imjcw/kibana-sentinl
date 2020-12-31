FROM kibana:6.8.4

USER root

RUN yum install -y wget;

USER kibana

RUN cd /tmp; \
    wget https://github.com/lmangani/sentinl/releases/download/6.8.4/sentinl-v6.8.4.zip; \
    cd /usr/share/kibana/bin; \
    kibana-plugin install file:///tmp/sentinl-v6.8.4.zip; \
    rm -rf /tmp/sentinl-v6.8.4.zip;
