#!/bin/sh
AIKAR_FLAGS="-XX:+AlwaysPreTouch \
             -XX:+DisableExplicitGC \
             -XX:+ParallelRefProcEnabled \
             -XX:+PerfDisableSharedMem \
             -XX:+UnlockExperimentalVMOptions \
             -XX:+UseG1GC \
             -XX:G1HeapRegionSize=8M \
             -XX:G1HeapWastePercent=5 \
             -XX:G1MaxNewSizePercent=40 \
             -XX:G1MixedGCCountTarget=4 \
             -XX:G1MixedGCLiveThresholdPercent=90 \
             -XX:G1NewSizePercent=30 \
             -XX:G1RSetUpdatingPauseTimePercent=5 \
             -XX:G1ReservePercent=20 \
             -XX:InitiatingHeapOccupancyPercent=15 \
             -XX:MaxGCPauseMillis=200 \
             -XX:MaxTenuringThreshold=1 \
             -XX:SurvivorRatio=32 \
             -Dusing.aikars.flags=https://mcflags.emc.gs \
             -Daikars.new.flags=true"
SERVER_JAR="fabric-server-launch.jar"

if [ -z ${MEMORY} ]; then
  MEMORY="1024"
fi

MEMORY_ARGS="-Xms${MEMORY}M -Xmx${MEMORY}M"

cd /opt/mc-server
if [ ! -z "${ACCEPT_EULA}" ]; then
  sed -i 's/eula=.*//' eula.txt
  echo "eula=${ACCEPT_EULA}" >> eula.txt
else
  echo "eula=false" > eula.txt
fi
cp server.properties.default server.properties
/opt/mc-server/setup-server-properties.sh

cp -r /opt/mc-server/. /opt/server-runtime

stop_server() {
  echo "stop" > /opt/mc-server/console-fifo
  wait $SERVER_PID
}

trap stop_server SIGINT SIGTERM

cd /opt/server-runtime
cat /opt/mc-server/console-fifo | java ${MEMORY_ARGS} ${AIKAR_FLAGS} -jar /opt/server-runtime/${SERVER_JAR} nogui &
SERVER_PID=$!
wait $SERVER_PID
