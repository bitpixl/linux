#!/bin/bash

if [[ `id -u` != 0 ]]; then
    echo "This script must be run as root."
    exit
fi

# install minimal kde plasma desktop
dnf install -y \
@"base-x" \
nano
