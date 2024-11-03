#!/bin/sh
export CONTAINERD_ADDRESS=/run/k3s/containerd/containerd.sock
for img in $(nerdctl images --namespace k8s.io | awk '{print $1 ":" $2}' | cut -d'/' -f2); do
  if [ "$img" != "<none>:<none>" ]; then
    image = $(echo $img | cut -d':' -f1)
    version = $(echo $img | cut -d':' -f2)
    nerdctl save rancher/$(img) | gzip > ${image}.tar.gz
  fi
done