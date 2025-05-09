#!/bin/bash -ue
cd $(dirname $0)

manifest_tmp=$(mktemp)
bazel run -c opt @rules_steam//generate -- --repo palworld_dedicated_server --app 2394010 --out ${manifest_tmp}
mv ${manifest_tmp} steamapps.bzl
bazel mod deps
