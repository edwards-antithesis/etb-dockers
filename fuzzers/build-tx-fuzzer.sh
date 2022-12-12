#!/usr/bin/env bash

git clone -b develop https://github.com/kurtosis-tech/tx-fuzz

cp tx-fuzzer.Dockerfile tx-fuzz/tx-fuzzer.Dockerfile

cd tx-fuzz && podman build --format docker -t tx-fuzzer -f tx-fuzzer.Dockerfile .

cd ../

rm -rf tx-fuzz
