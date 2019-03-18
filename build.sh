#! /bin/sh

docker build -t containerd_build .
docker run -it  -v `pwd`:/go/src/github.com/containerd/containerd containerd_build make