#!/bin/sh
#
# Dependency Installer for IO Monitor for Virtual machines
#
# Copyright (C) 2017 Henry Spanka
#
# Authors:
#  Henry Spanka <henry@myvirtualserver.de>
#
# This work is licensed under the terms of the GNU GPL, version 2.  See
# the COPYING file in the root directory.
#
echo "Installing dependencies"

apt-get install python-pip
pip install terminaltables hurry.filesize colorclass

echo "Successfully installed dependencies"
