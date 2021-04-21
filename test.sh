#!/bin/bash

if [[ `id -u` != 0 ]]; then
    echo "This script must be run as root."
    exit
fi

dnf update -y
dnf install -y \
nano \
# core packages
# @"Package Name" contain many packages (group)
vim
