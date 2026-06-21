FROM ubuntu:24.04

ARG XMRIG_PROXY_VERSION=6.24.0

RUN apt update && \
    apt install -y wget ca-certificates && \
    wget https://github.com/xmrig/xmrig-proxy/releases/download/v${XMRIG_PROXY_VERSION}/xmrig-proxy-${XMRIG_PROXY_VERSION}-linux-static-x64.tar.gz && \
    tar -xzf xmrig-proxy-${XMRIG_PROXY_VERSION}-linux-static-x64.tar.gz && \
    mv xmrig-proxy-${XMRIG_PROXY_VERSION}/xmrig-proxy /usr/local/bin/xmrig-proxy && \
    chmod +x /usr/local/bin/xmrig-proxy && \
    rm -rf xmrig-proxy-${XMRIG_PROXY_VERSION}*

ENTRYPOINT ["xmrig-proxy"]
