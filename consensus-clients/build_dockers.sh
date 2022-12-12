#!/usr/bin/env bash
set +x
if [[ $# -gt 0 ]]; then
   TARGETS=$*
else
   TARGETS=$(ls -1 *.Dockerfile)
fi
echo "Building: $TARGETS"
for df in $TARGETS; do
    echo $df
    i=`echo $df | tr '_' ':'`
    image=`echo "${i::-11}"`
    podman build --format docker -f "$df" -t "$image" .
done

