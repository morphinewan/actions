#!/bin/sh

# avoid continuing when errors or undefined variables are present.
set -eu

# sync and update git submodules
mkdir /root/.ssh/
gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o /root/.ssh/id_rsa docker_id_rsa.gpg
chmod 400 /root/.ssh/id_rsa

touch /root/.ssh/known_hosts
ssh-keyscan github.com >> /root/.ssh/known_hosts

git submodule sync
git submodule update --init

rm -rf /root/.ssh

pwd

# 安装环境依赖#
yarn install

ls

ls ./node_modules/.bin

# run lint
yarn lint

# jest test
yarn test