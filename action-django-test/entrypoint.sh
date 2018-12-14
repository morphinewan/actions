#!/bin/sh

# avoid continuing when errors or undefined variables are present.
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

pip install -r requirements.txt

export DJANGO_SETTINGS_MODULE=$DJANGO_APP_NAME.settings
python manage.py test --parallel