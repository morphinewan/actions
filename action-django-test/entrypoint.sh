#!/bin/sh

set -eu
pip install -r requirements.txt
export DJANGO_SETTINGS_MODULE=$DJANGO_APP_NAME.settings
python manage.py test --parallel