#!/bin/bash
# export CONTAINERD_ADDRESS=/run/k3s/containerd/containerd.sock
# Path to the text file
# PATH="/root/rke2-artifacts/images"
PATH="/home/cqshinn/GIT/rke-1.24/images"
data=`/usr/bin/ls $PATH`
# Read the file line by line
for img in $data; do
  echo "Pulling $img..."
  /usr/bin/docker load < images/$img
  #nerdctl load --namespace k8s.io < $img
done