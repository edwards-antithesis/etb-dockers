#!/usr/bin/env bash
echo "found $#: $0 $1"
if [[ ($# -gt 0 && $1 -eq "inst") ]];
then
    podman build --format docker -t etb-all-clients:inst -f etb-all-clients_inst.Dockerfile .
else    
    podman build --format docker -t etb-all-clients -f etb-all-clients.Dockerfile .
fi
    
