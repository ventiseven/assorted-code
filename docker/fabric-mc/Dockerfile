FROM alpine:latest
RUN apk add --no-cache openjdk17
RUN apk add --no-cache rcon
COPY rootfs/ /
WORKDIR /opt/fabric-installer
RUN java -jar fabric-installer-1.0.3.jar server -dir /opt/mc-server -mcversion 1.20.1 -loader 0.16.10 -downloadMinecraft \
    && chmod 755 /opt/mc-server/start.sh \
    && chmod 755 /opt/mc-server/setup-server-properties.sh
WORKDIR /opt/server-runtime
ENTRYPOINT [ "/opt/mc-server/start.sh" ]
