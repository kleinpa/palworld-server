#!/bin/bash -ue

bazel run //:image_tarball
docker run --rm -it -p 8211/udp --mount type=bind,source="$(pwd)"/data,target=/opt/palworld/Pal/Saved/ palworld-server:bazel -- $@
