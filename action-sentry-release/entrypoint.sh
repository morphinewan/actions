#!/bin/sh

# avoid continuing when errors.
set -e

# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

TAG=$(./tag $GITHUB_EVENT_PATH)

SENTRY_VERSION=$(sentry-cli releases propose-version)

# Create a release
sentry-cli releases new --finalize -p $SENTRY_PROJECT $TAG

# Associate commits with the release
sentry-cli releases set-commits --auto $SENTRY_VERSION

# Tell Sentry When You Deploy a Release
sentry-cli releases deploys $TAG new -e PRODUCTION