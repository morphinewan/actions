#!/bin/sh

set -eu

curl -s --user 'api:$MAIL_API_KEY' \
    https://api.mailgun.net/v3/$MAIL_DOMAIN/messages \
    -F from='WebMaster <webmaster@$MAIL_DOMAIN>' \
    -F to=$MAIL_TO \
    -F subject='$MAIL_SUBJECT' \
    -F text='$MAIL_CONTENT'
