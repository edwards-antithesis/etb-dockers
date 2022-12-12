#!/usr/bin/env bash

echo "found: $# : $0 $1"
if [[ ($# -gt 0 && $1 -eq "inst") ]];
then
    podman build --format docker -t geth:bad-block-creator-inst -f geth_bad-block-creator-inst.Dockerfile .
else
    podman build --format docker -t geth:bad-block-creator -f geth_bad-block-creator.Dockerfile .
fi
