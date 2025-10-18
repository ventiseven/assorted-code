# Fabric MC

Container for running an instance of a modded Minecraft fabric server

> Current Dockerfile builds a container for MC 1.20.1 running Fabric 0.16.10

> These can be changed by editing the values of the arguments **mcversion**
> and **loader** in the Dockerfile and editing the image of the compose file
> accordingly

The container needs a **runtime** folder to be mounted on /opt/server-runtime.
This is where the server files are stored, such as world information and mods.

Changes to the server.properties file are ignored as this file is regenerated
every time the container is started based on the current environment variables.

The amount of memory assigned to the server instance is specified via the
**MEMORY** environment variable in MB. (Defaults to 1024 MB)

The EULA must be accepted by setting the environment variable **ACCEPT_EULA** to
"true".

Commands can be executed directly on the server via docker exec by running STDIN
to the named pipe **/opt/mc-server/console-fifo**
```
docker exec <container> echo "<command>" > /opt/mc-server/console-fifo
```

The following are the server properties that can be modified via environment
variables.

| Variable |
| --- |
|ALLOW_FLIGHT|
|ALLOW_NETHER|
|BROADCAST_CONSOLE_TO_OPS|
|BROADCAST_RCON_TO_OPS|
|DIFFICULTY|
|ENABLE_COMMAND_BLOCK|
|ENABLE_STATUS|
|ENFORCE_SECURE_PROFILE|
|ENFORCE_WHITELIST|
|ENTITY_BROADCAST_RANGE_PERCENTAGE|
|FORCE_GAMEMODE|
|FUNCTION_PERMISSION_LEVEL|
|GAMEMODE|
|GENERATE_STRUCTURES|
|GENERATOR_SETTINGS|
|HARDCORE|
|HIDE_ONLINE_PLAYERS|
|INITIAL_DISABLED_PACKS|
|INITIAL_ENABLED_PACKS|
|LEVEL_NAME|
|LEVEL_SEED|
|LEVEL_TYPE|
|LOG_IPS|
|MAX_CHAINED_NEIGHBOR_UPDATES|
|MAX_PLAYERS|
|MAX_TICK_TIME|
|MAX_WORLD_SIZE|
|MOTD|
|NETWORK_COMPRESSION_THRESHOLD|
|ONLINE_MODE|
|OP_PERMISSION_LEVEL|
|PAUSE_WHEN_EMPTY_SECONDS|
|PLAYER_IDLE_TIMEOUT|
|PREVENT_PROXY_CONNECTIONS|
|PVP|
|RATE_LIMIT|
|REGION_FILE_COMPRESSION|
|REQUIRE_RESOURCE_PACK|
|RESOURCE_PACK|
|RESOURCE_PACK_ID|
|RESOURCE_PACK_PROMPT|
|RESOURCE_PACK_SHA1|
|SERVER_PORT|
|SIMULATION_DISTANCE|
|SPAWN_MONSTERS|
|SPAWN_PROTECTION|
|SYNC_CHUNK_WRITES|
|USE_NATIVE_TRANSPORT|
|VIEW_DISTANCE|
|WHITE_LIST|
