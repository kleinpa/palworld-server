#!/bin/bash -ue
cd $(dirname $0)

bazel run @rules_steam//generate -- --app 2394010 --repo palworld_dedicated_server --out $(pwd)/steamapps.bzl
bazel mod deps
