#!/bin/bash -ue

bazel run //:image_tarball
mkdir -p "$(pwd)/run-local-data"
docker run --rm -it -p 8211/udp -u 1000 --mount type=bind,source="$(pwd)"/run-local-data,target=/opt/palworld/Pal/Saved/ palworld-server:bazel -- $@
