# FoundryVTT Image

Docker image for running FoundryVTT

## Requirements
- **Data Folder:** While not necessary for the image to run, mounting a host directory or a docker volume to the **/opt/foundry-vtt-data** folder makes it easier to interact with FoundryVTT configuration and installing third party systems. Due to the nature of FoundryVTT, using a volume is suggested as configuration, systems and modules can be handled from the FoundryVTT Web Interface.


## Installation
- Change directory to the foundry-vtt folder
```
cd assorted-code/docker/local/foundry-vtt
```

- Obtain the timed URL for the desired release of FoundryVTT from their website, selecting **Node.js** as Operating System
```
# Example for version 13.346
foundry_url="https://r2.foundryvtt.com/releases/13.346/FoundryVTT-Node-13.346.zip?verify=********"
wget -O rootfs/opt/foundry-vtt-app/FoundryVTT-Node.zip $foundry_url
```

- Build the image with the proper version tag
```
docker build -t local/foundry-vtt:13.346 .
```

- Edit docker-compose.yml with the proper version of the image
```
    image: local/foundry-vtt:13.346
```

- Run the container using docker compose
```
docker compose up -d
```

- Connect to Foundry at 127.0.0.1:30000

> **Note:** When stopping the container, using **docker compose down** with the **-v** flag will delete the data volume and erase all FoundryVTT data for the instance! 

## HTTP and HTTPS
To enable HTTPS set the following environment variables in the docker-compose.yml file.
If using a specific certificate and key, either place them in **rootfs/opt/foundry-vtt-ssl/** before building or mount the files in this directory
If either **SSL_CERT** or **SSL_KEY** are empty or non-existant, the container generates a self-signed certificate at every run.
| Variable | Values | Usage |
| --- | --- |
| SSL_ENABLED | true/false | Use HTTPS instead of HTTP |
| SSL_CERT | <filename> | Name of the SSL certificate to use |
| SSL_KEY | <filename> | Name of the SSL key to use |