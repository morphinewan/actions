#!/bin/sh

set -eu
yarn install
yarn lint
yarn test