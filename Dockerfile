FROM golang:1.10-stretch

RUN apt-get update && apt-get install -y \
    build-essential \
    libprotobuf-dev \
    libprotobuf-c0-dev \
    protobuf-c-compiler \
    protobuf-compiler \
    btrfs-tools \
    libseccomp2 \
    libseccomp-dev \
    --no-install-recommends \
    && apt-get clean

WORKDIR /go/src/github.com/containerd/containerd