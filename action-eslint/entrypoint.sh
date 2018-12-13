#!/bin/sh

# avoid continuing when errors or undefined variables are present.
set -eu

# mkdir $HOME/.ssh
# gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o $HOME/.ssh/id_rsa docker_id_rsa.gpg
# chmod 400 $HOME/.ssh/id_rsa
#
# ssh-keyscan -t rsa github.com > $HOME/.ssh/known_hosts


# # Decrypt the file
# mkdir -p $HOME/secrets
# gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o $HOME/secrets/docker_id_rsa docker_id_rsa.gpg
# chmod 400 $HOME/secrets/docker_id_rsa
# ssh-keygen -R github.com
#
# checkout submodules
# ssh-agent bash -c 'ssh-add $HOME/secrets/docker_id_rsa; git submodule sync; git submodule update --init;'
#
# # Delete Secrets
# rm -rf $HOME/secrets

# git submodule sync
# git submodule update --init

# git clone git@github.com:morphinewan/actions.git
#
# rm -rf $HOME/.ssh
#
# # 安装环境依赖#
# yarn install
#
# # 测试eslint
# yarn lint-ci

# install git
apt-get update
apt-get install -y git

mkdir /root/.ssh/
gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o /root/.ssh/id_rsa docker_id_rsa.gpg

touch /root/.ssh/known_hosts
ssh-keyscan github.com >> /root/.ssh/known_hosts

git clone git@github.com:morphinewan/actions.git