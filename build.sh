#!/bin/bash

if ! docker buildx inspect apurata-builder &>/dev/null; then
docker buildx create --name apurata-builder --driver docker-container --platform linux/amd64
fi
docker buildx use apurata-builder

docker buildx build \
    -t quique0194/awscli_grunt:2.1 \
    -t quique0194/awscli_grunt:latest \
    --platform linux/amd64,linux/arm64 \
    --push \
    .