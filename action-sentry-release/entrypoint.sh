#!/bin/sh

# avoid continuing when errors.
set -e

# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

TAG=$(./tag $GITHUB_EVENT_PATH)

SENTRY_VERSION=$(sentry-cli releases propose-version)

echo "Create a release $TAG"
sentry-cli releases new --finalize -p $SENTRY_PROJECT $TAG

echo "Associate commits $SENTRY_VERSION with the release"
sentry-cli releases set-commits --auto $SENTRY_VERSION

# Upload Source Maps
for file in ./dist/static/js/*/*.js.map
    if test -f $file
    then
        echo "Upload sourcemap $file"
        sentry-cli releases files $TAG upload-sourcemaps $file
    fi
fi

echo "Deploy a Release $TAG"
sentry-cli releases deploys $TAG new -e PRODUCTION