#!/bin/sh
set -e
sh -c "black --version"
sh -c "black $*"
