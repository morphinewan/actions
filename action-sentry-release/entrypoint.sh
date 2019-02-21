#!/bin/sh

# avoid continuing when errors.
set -eu

# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

TAG=$(./tag $GITHUB_EVENT_PATH)

sentry-cli releases new --finalize -p $SENTRY_PROJECT $TAG

echo "Associate commits $GITHUB_SHA with the release $TAG"
sentry-cli releases set-commits "$TAG" --commit "${GITHUB_REPOSITORY}@${GITHUB_SHA}"

# Upload Source Maps
for file in ./dist/static/js/*/*.js.map
do
    if test -f $file
    then
        URL_PREFIX=$(echo $file | awk -F / '{print "~/js/"$(NF-1)}')
        sentry-cli releases files $TAG upload-sourcemaps $file --url-prefix ${URL_PREFIX} --rewrite
    fi
done

sentry-cli releases deploys $TAG new -e $SENTRY_ENVIRONMENT