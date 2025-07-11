#!/bin/sh
if [ ! -z "${ALLOW_FLIGHT}" ]; then
  sed -i 's/allow-flight=.*//' server.properties
  echo "allow-flight=${ALLOW_FLIGHT}" >> server.properties
fi

if [ ! -z "${ALLOW_NETHER}" ]; then
  sed -i 's/allow-nether=.*//' server.properties
  echo "allow-nether=${ALLOW_NETHER}" >> server.properties
fi

if [ ! -z "${BROADCAST_CONSOLE_TO_OPS}" ]; then
  sed -i 's/broadcast-console-to-ops=.*//' server.properties
  echo "broadcast-console-to-ops=${BROADCAST_CONSOLE_TO_OPS}" >> server.properties
fi

if [ ! -z "${BROADCAST_RCON_TO_OPS}" ]; then
  sed -i 's/broadcast-rcon-to-ops=.*//' server.properties
  echo "broadcast-rcon-to-ops=${BROADCAST_RCON_TO_OPS}" >> server.properties
fi

if [ ! -z "${DIFFICULTY}" ]; then
  sed -i 's/difficulty=.*//' server.properties
  echo "difficulty=${DIFFICULTY}" >> server.properties
fi

if [ ! -z "${ENABLE_COMMAND_BLOCK}" ]; then
  sed -i 's/enable-command-block=.*//' server.properties
  echo "enable-command-block=${ENABLE_COMMAND_BLOCK}" >> server.properties
fi

if [ ! -z "${ENABLE_STATUS}" ]; then
  sed -i 's/enable-status=.*//' server.properties
  echo "enable-status=${ENABLE_STATUS}" >> server.properties
fi

if [ ! -z "${ENFORCE_SECURE_PROFILE}" ]; then
  sed -i 's/enforce-secure-profile=.*//' server.properties
  echo "enforce-secure-profile=${ENFORCE_SECURE_PROFILE}" >> server.properties
fi

if [ ! -z "${ENFORCE_WHITELIST}" ]; then
  sed -i 's/enforce-whitelist=.*//' server.properties
  echo "enforce-whitelist=${ENFORCE_WHITELIST}" >> server.properties
fi

if [ ! -z "${ENTITY_BROADCAST_RANGE_PERCENTAGE}" ]; then
  sed -i 's/entity-broadcast-range-percentage=.*//' server.properties
  echo "entity-broadcast-range-percentage=${ENTITY_BROADCAST_RANGE_PERCENTAGE}" >> server.properties
fi

if [ ! -z "${FORCE_GAMEMODE}" ]; then
  sed -i 's/force-gamemode=.*//' server.properties
  echo "force-gamemode=${FORCE_GAMEMODE}" >> server.properties
fi

if [ ! -z "${FUNCTION_PERMISSION_LEVEL}" ]; then
  sed -i 's/function-permission-level=.*//' server.properties
  echo "function-permission-level=${FUNCTION_PERMISSION_LEVEL}" >> server.properties
fi

if [ ! -z "${GAMEMODE}" ]; then
  sed -i 's/gamemode=.*//' server.properties
  echo "gamemode=${GAMEMODE}" >> server.properties
fi

if [ ! -z "${GENERATE_STRUCTURES}" ]; then
  sed -i 's/generate-structures=.*//' server.properties
  echo "generate-structures=${GENERATE_STRUCTURES}" >> server.properties
fi

if [ ! -z "${GENERATOR_SETTINGS}" ]; then
  sed -i 's/generator-settings=.*//' server.properties
  echo "generator-settings=${GENERATOR_SETTINGS}" >> server.properties
fi

if [ ! -z "${HARDCORE}" ]; then
  sed -i 's/hardcore=.*//' server.properties
  echo "hardcore=${HARDCORE}" >> server.properties
fi

if [ ! -z "${HIDE_ONLINE_PLAYERS}" ]; then
  sed -i 's/hide-online-players=.*//' server.properties
  echo "hide-online-players=${HIDE_ONLINE_PLAYERS}" >> server.properties
fi

if [ ! -z "${INITIAL_DISABLED_PACKS}" ]; then
  sed -i 's/initial-disabled-packs=.*//' server.properties
  echo "initial-disabled-packs=${INITIAL_DISABLED_PACKS}" >> server.properties
fi

if [ ! -z "${INITIAL_ENABLED_PACKS}" ]; then
  sed -i 's/initial-enabled-packs=.*//' server.properties
  echo "initial-enabled-packs=${INITIAL_ENABLED_PACKS}" >> server.properties
fi

if [ ! -z "${LEVEL_NAME}" ]; then
  sed -i 's/level-name=.*//' server.properties
  echo "level-name=${LEVEL_NAME}" >> server.properties
fi

if [ ! -z "${LEVEL_SEED}" ]; then
  sed -i 's/level-seed=.*//' server.properties
  echo "level-seed=${LEVEL_SEED}" >> server.properties
fi

if [ ! -z "${LEVEL_TYPE}" ]; then
  sed -i 's/level-type=.*//' server.properties
  echo "level-type=${LEVEL_TYPE}" >> server.properties
fi

if [ ! -z "${LOG_IPS}" ]; then
  sed -i 's/log-ips=.*//' server.properties
  echo "log-ips=${LOG_IPS}" >> server.properties
fi

if [ ! -z "${MAX_CHAINED_NEIGHBOR_UPDATES}" ]; then
  sed -i 's/max-chained-neighbor-updates=.*//' server.properties
  echo "max-chained-neighbor-updates=${MAX_CHAINED_NEIGHBOR_UPDATES}" >> server.properties
fi

if [ ! -z "${MAX_PLAYERS}" ]; then
  sed -i 's/max-players=.*//' server.properties
  echo "max-players=${MAX_PLAYERS}" >> server.properties
fi

if [ ! -z "${MAX_TICK_TIME}" ]; then
  sed -i 's/max-tick-time=.*//' server.properties
  echo "max-tick-time=${MAX_TICK_TIME}" >> server.properties
fi

if [ ! -z "${MAX_WORLD_SIZE}" ]; then
  sed -i 's/max-world-size=.*//' server.properties
  echo "max-world-size=${MAX_WORLD_SIZE}" >> server.properties
fi

if [ ! -z "${MOTD}" ]; then
  sed -i 's/motd=.*//' server.properties
  echo "motd=${MOTD}" >> server.properties
fi

if [ ! -z "${NETWORK_COMPRESSION_THRESHOLD}" ]; then
  sed -i 's/network-compression-threshold=.*//' server.properties
  echo "network-compression-threshold=${NETWORK_COMPRESSION_THRESHOLD}" >> server.properties
fi

if [ ! -z "${ONLINE_MODE}" ]; then
  sed -i 's/online-mode=.*//' server.properties
  echo "online-mode=${ONLINE_MODE}" >> server.properties
fi

if [ ! -z "${OP_PERMISSION_LEVEL}" ]; then
  sed -i 's/op-permission-level=.*//' server.properties
  echo "op-permission-level=${OP_PERMISSION_LEVEL}" >> server.properties
fi

if [ ! -z "${PAUSE_WHEN_EMPTY_SECONDS}" ]; then
  sed -i 's/pause-when-empty-seconds=.*//' server.properties
  echo "pause-when-empty-seconds=${PAUSE_WHEN_EMPTY_SECONDS}" >> server.properties
fi

if [ ! -z "${PLAYER_IDLE_TIMEOUT}" ]; then
  sed -i 's/player-idle-timeout=.*//' server.properties
  echo "player-idle-timeout=${PLAYER_IDLE_TIMEOUT}" >> server.properties
fi

if [ ! -z "${PREVENT_PROXY_CONNECTIONS}" ]; then
  sed -i 's/prevent-proxy-connections=.*//' server.properties
  echo "prevent-proxy-connections=${PREVENT_PROXY_CONNECTIONS}" >> server.properties
fi

if [ ! -z "${PVP}" ]; then
  sed -i 's/pvp=.*//' server.properties
  echo "pvp=${PVP}" >> server.properties
fi

if [ ! -z "${RATE_LIMIT}" ]; then
  sed -i 's/rate-limit=.*//' server.properties
  echo "rate-limit=${RATE_LIMIT}" >> server.properties
fi

if [ ! -z "${REGION_FILE_COMPRESSION}" ]; then
  sed -i 's/region-file-compression=.*//' server.properties
  echo "region-file-compression=${REGION_FILE_COMPRESSION}" >> server.properties
fi

if [ ! -z "${REQUIRE_RESOURCE_PACK}" ]; then
  sed -i 's/require-resource-pack=.*//' server.properties
  echo "require-resource-pack=${REQUIRE_RESOURCE_PACK}" >> server.properties
fi

if [ ! -z "${RESOURCE_PACK}" ]; then
  sed -i 's/resource-pack=.*//' server.properties
  echo "resource-pack=${RESOURCE_PACK}" >> server.properties
fi

if [ ! -z "${RESOURCE_PACK_ID}" ]; then
  sed -i 's/resource-pack-id=.*//' server.properties
  echo "resource-pack-id=${RESOURCE_PACK_ID}" >> server.properties
fi

if [ ! -z "${RESOURCE_PACK_PROMPT}" ]; then
  sed -i 's/resource-pack-prompt=.*//' server.properties
  echo "resource-pack-prompt=${RESOURCE_PACK_PROMPT}" >> server.properties
fi

if [ ! -z "${RESOURCE_PACK_SHA1}" ]; then
  sed -i 's/resource-pack-sha1=.*//' server.properties
  echo "resource-pack-sha1=${RESOURCE_PACK_SHA1}" >> server.properties
fi

if [ ! -z "${SERVER_PORT}" ]; then
  sed -i 's/server-port=.*//' server.properties
  echo "server-port=${SERVER_PORT}" >> server.properties
fi

if [ ! -z "${SIMULATION_DISTANCE}" ]; then
  sed -i 's/simulation-distance=.*//' server.properties
  echo "simulation-distance=${SIMULATION_DISTANCE}" >> server.properties
fi

if [ ! -z "${SPAWN_MONSTERS}" ]; then
  sed -i 's/spawn-monsters=.*//' server.properties
  echo "spawn-monsters=${SPAWN_MONSTERS}" >> server.properties
fi

if [ ! -z "${SPAWN_PROTECTION}" ]; then
  sed -i 's/spawn-protection=.*//' server.properties
  echo "spawn-protection=${SPAWN_PROTECTION}" >> server.properties
fi

if [ ! -z "${SYNC_CHUNK_WRITES}" ]; then
  sed -i 's/sync-chunk-writes=.*//' server.properties
  echo "sync-chunk-writes=${SYNC_CHUNK_WRITES}" >> server.properties
fi

if [ ! -z "${USE_NATIVE_TRANSPORT}" ]; then
  sed -i 's/use-native-transport=.*//' server.properties
  echo "use-native-transport=${USE_NATIVE_TRANSPORT}" >> server.properties
fi

if [ ! -z "${VIEW_DISTANCE}" ]; then
  sed -i 's/view-distance=.*//' server.properties
  echo "view-distance=${VIEW_DISTANCE}" >> server.properties
fi

if [ ! -z "${WHITE_LIST}" ]; then
  sed -i 's/white-list=.*//' server.properties
  echo "white-list=${WHITE_LIST}" >> server.properties
fi
