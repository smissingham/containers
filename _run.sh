#!/bin/sh

podman network exists shared 2>/dev/null || podman network create shared >/dev/null 2>&1

podman-compose -f compose.core.yml up -d --remove-orphans
podman-compose -f compose.home.yml up -d --remove-orphans
podman-compose -f compose.llm.yml up -d --remove-orphans
podman-compose -f compose.media.yml up -d --remove-orphans
#podman-compose -f llm.docker-compose.yml up -d --remove-orphans
#podman-compose -f games.docker-compose.yml up -d --remove-orphans



