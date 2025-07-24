#!/bin/bash

# Build for AMD64 platform explicitly
#docker build --platform linux/amd64 -t us.gcr.io/broad-dsp-lrma/lr-locityper:kvg_build_docker_locally -f containers/Dockerfile . && \
docker build -t us.gcr.io/broad-dsp-lrma/lr-locityper:kvg_build_docker_locally -f containers/Dockerfile . && \
    docker push us.gcr.io/broad-dsp-lrma/lr-locityper:kvg_build_docker_locally
