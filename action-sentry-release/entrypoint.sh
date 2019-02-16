#!/bin/sh

# avoid continuing when errors.
set -eu

# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

TAG=$(./tag $GITHUB_EVENT_PATH)

SENTRY_VERSION=$(sentry-cli releases propose-version)

echo "Create a release $TAG"
sentry-cli releases new --finalize -p $SENTRY_PROJECT $TAG

echo "Associate commits $SENTRY_VERSION with the release"
sentry-cli releases set-commits "$TAG" --commit "${GITHUB_REPOSITORY}@${SENTRY_VERSION}"

# Upload Source Maps
for file in ./dist/static/js/*/*.js.map
do
    if test -f $file
    then
        URL_PREFIX=$(echo $file | awk -F / '{print "~/js/"$(NF-1)}')
        echo "Upload sourcemap $file with url-prefix ${URL_PREFIX}"
        sentry-cli releases files $TAG upload-sourcemaps $file --url-prefix ${URL_PREFIX}
    fi
done

echo "Deploy a Release $TAG"
sentry-cli releases deploys $TAG new -e PRODUCTION