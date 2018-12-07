#!/bin/sh

# avoid continuing when errors or undefined variables are present.
set -eu

mkdir ~/.ssh
gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o ~/.ssh/id_rsa docker_id_rsa.gpg
chmod 400 ~/.ssh/id_rsa

ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
# Decrypt the file
# mkdir -p /secrets
# gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o /secrets/docker_id_rsa docker_id_rsa.gpg
# chmod 400 /secrets/docker_id_rsa
# ssh-keygen -R github.com

# checkout submodules
# ssh-agent bash -c 'ssh-add /secrets/docker_id_rsa; git submodule sync; git submodule update --init;'

# Delete Secrets
# rm -rf /secrets

git submodule sync
git submodule update --init

rm -rf ~/.ssh

# 安装环境依赖#
yarn install

# 测试eslint
yarn lint-ci