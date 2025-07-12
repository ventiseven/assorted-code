#!/bin/sh
foundry_args="--noipdiscovery --dataPath=/opt/foundry-vtt-data"
if [ ${SSL_ENABLED} == "true" ]; then
  ssl_autoconfig=0
  if [ -z "${SSL_CERT}" ] || [ -z "${SSL_KEY}" ]; then
    ssl_autoconfig=1
  else
    if [ ! -f "${SSL_CERT}" ] || [ ! -f "${SSL_KEY}" ]; then
      ssl_autoconfig=1
    fi
  fi
  if [ $ssl_autoconfig -eq 1 ]; then
    ssl_cert='"/opt/foundry-vtt-app/cert.pem"'
    ssl_key='"/opt/foundry-vtt-app/key.pem"'
    openssl req -x509 \
                -newkey rsa:4096 \
                -keyout /opt/foundry-vtt-app/key.pem \
                -out /opt/foundry-vtt-app/cert.pem \
                -sha256 \
                -nodes \
                -subj "/CN=foundry-vtt" > /dev/null 2>&1
  else
    ssl_cert=\""${SSL_CERT}"\"
    ssl_key=\""${SSL_KEY}"\"
  fi
else
  ssl_cert="null"
  ssl_key="null"
fi

mkdir /opt/foundry-vtt-data/Config
cat > /opt/foundry-vtt-data/Config/options.json <<EOF
{
  "dataPath": "/opt/foundry-vtt-data",
  "compressStatic": true,
  "fullscreen": false,
  "hostname": null,
  "language": "en.core",
  "localHostname": null,
  "port": 30000,
  "proxyPort": null,
  "proxySSL": false,
  "routePrefix": null,
  "updateChannel": "stable",
  "upnp": false,
  "awsConfig": null,
  "compressSocket": true,
  "cssTheme": "dark",
  "deleteNEDB": false,
  "hotReload": false,
  "passwordSalt": null,
  "sslCert": ${ssl_cert},
  "sslKey": ${ssl_key},
  "world": null,
  "serviceConfig": null
}
EOF

stop_foundry_int() {
    kill -2 $FOUNDRY_PID
}

stop_foundry_term() {
    kill -9 $FOUNDRY_PID
}

trap stop_foundry_int SIGINT
trap stop_foundry_term SIGTERM

/usr/bin/node main.js $foundry_args &
FOUNDRY_PID=$!
wait $FOUNDRY_PID