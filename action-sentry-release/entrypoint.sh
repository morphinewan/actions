#!/bin/bash

# avoid continuing when errors.
set -eu

TAG_PATTERN="^refs\/tags\/(.*)$"

if [[ $GITHUB_REF =~ $TAG_PATTERN ]]
then
    TAG="${BASH_REMATCH[1]}"
    echo "Create a new sentry release for Tag:[$TAG]."
else
    echo "Not tag action, skip creating sentry release."
    exit 1
fi

sentry-cli releases new --finalize -p $SENTRY_PROJECT $TAG

echo "Associate commits $GITHUB_SHA with the release $TAG"
sentry-cli releases set-commits "$TAG" --commit "${GITHUB_REPOSITORY}@${GITHUB_SHA}"

sentry-cli releases deploys $TAG new -e $SENTRY_ENVIRONMENT
