#!/bin/sh

# avoid continuing when errors or undefined variables are present.
set -eu

# Decrypt the file
mkdir -p /secrets
gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o /secrets/docker_id_rsa docker_id_rsa.gpg
chmod 400 /secrets/docker_id_rsa
# ssh-keygen -R github.com

# checkout submodules
ssh-agent bash -c 'ssh-add /secrets/docker_id_rsa; git submodule sync; git submodule update --init;'

# Delete Secrets
rm -rf /secrets

# 安装环境依赖#
yarn install

# 测试eslint
yarn lint-ci