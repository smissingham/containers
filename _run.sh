#!/bin/sh


podman-compose -f compose.core.yml up -d --remove-orphans
podman-compose -f compose.home.yml up -d --remove-orphans
podman-compose -f compose.llm.yml up -d --remove-orphans
podman-compose -f compose.media.yml up -d --remove-orphans
#podman-compose -f llm.docker-compose.yml up -d --remove-orphans
#podman-compose -f games.docker-compose.yml up -d --remove-orphans



# Load environment variables
#if [ -f .env ]; then
#    export $(grep -v '^#' .env | xargs)
#fi
#sudo chown -R $PUID:$PGID $APP_DATA
