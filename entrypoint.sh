#!/bin/bash -ue

UE_PROJECT_ROOT=/opt/palworld

chmod +x "$UE_PROJECT_ROOT/Pal/Binaries/Linux/PalServer-Linux-Test"
"$UE_PROJECT_ROOT/Pal/Binaries/Linux/PalServer-Linux-Test" Pal "$@"
