FROM ttbb/base

WORKDIR /opt/sh

ARG version=2.37.0
ARG TARGETARCH

RUN wget https://github.com/prometheus/prometheus/releases/download/v$version/prometheus-$version.linux-$TARGETARCH.tar.gz  && \
mkdir -p prometheus && \
tar -xf prometheus-$version.linux-$TARGETARCH.tar.gz -C prometheus --strip-components 1 && \
rm -rf prometheus-$version.linux-$TARGETARCH.tar.gz

ENV PROM_HOME /opt/sh/prometheus

WORKDIR /opt/sh/prometheus
