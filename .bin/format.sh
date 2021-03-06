#!/usr/bin/env bash

set -eo pipefail

files=("$@")

yarn run prettier --write $files
yarn run eslint --ext .js,.jsx,.ts,.tsx $files
