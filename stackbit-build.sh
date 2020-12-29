#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5feaad2902664a001516d0aa/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/5feaad2902664a001516d0aa/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/5feaad2902664a001516d0aa/webhook/build/publish > /dev/null
