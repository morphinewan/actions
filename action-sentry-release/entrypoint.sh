#!/bin/sh

# avoid continuing when errors.
set -e

npm install @sentry/cli
export PATH=$(npm bin):$PATH
# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

SENTRY_VERSION=$(sentry-cli releases propose-version)

# Create a release
sentry-cli releases new -p $SENTRY_PROJECT $SENTRY_VERSION

# Associate commits with the release
sentry-cli releases set-commits --auto $SENTRY_VERSION

# Tell Sentry When You Deploy a Release
sentry-cli releases deploys VERSION new -e ENVIRONMENT