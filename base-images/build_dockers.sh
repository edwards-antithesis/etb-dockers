#!/usr/bin/env bash

podman build --format docker -t etb-client-builder -f etb-client-builder.Dockerfile .
podman build --format docker -t etb-client-runner -f etb-client-runner.Dockerfile .
