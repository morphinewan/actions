#!/bin/sh

set -eu

if [ -f docker_id_rsa.gpg ]; then
    # sync and update git submodules
    mkdir /root/.ssh/
    gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o /root/.ssh/id_rsa docker_id_rsa.gpg
    chmod 400 /root/.ssh/id_rsa

    touch /root/.ssh/known_hosts
    ssh-keyscan github.com >> /root/.ssh/known_hosts
fi

if [ -f .gitmodules ]; then
    git submodule sync
    git submodule update --init
fi

if [ -d /root/.ssh ]; then
    rm -rf /root/.ssh
fi

# 删除缓存文件
git clean -fdx