#!/bin/bash

if [[ `id -u` != 0 ]]; then
    echo "This script must be run as root."
    exit
fi

dnf update -y
dnf install \
dolphin \
kcalc
