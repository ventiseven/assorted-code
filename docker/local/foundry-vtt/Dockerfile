FROM alpine:latest
RUN apk add --no-cache nodejs openssl
COPY rootfs/ /
WORKDIR /opt/foundry-vtt-app
RUN adduser -h /opt/foundry-vtt-app -D -H -s /sbin/nologin foundry-vtt foundry-vtt \
    && chown -R foundry-vtt:foundry-vtt /opt/foundry-vtt-* \
    && chmod 750 start.sh
USER foundry-vtt:foundry-vtt
RUN unzip FoundryVTT-Node.zip \
    && rm -rf FoundryVTT-Node.zip
ENTRYPOINT [ "/opt/foundry-vtt-app/start.sh" ]
