#!/bin/bash -ue

bazel run //:image_tarball
docker run --user 0 --rm -it --entrypoint /bin/bash palworld-server:bazel

