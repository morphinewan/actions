#!/bin/sh

# avoid continuing when errors.
set -e

# $SENTRY_AUTH_TOKEN
# $SENTRY_ORG

SENTRY_VERSION=$(sentry-cli releases propose-version)

# Create a release
sentry-cli releases new -p react-bbd-yl $SENTRY_VERSION

# Associate commits with the release
sentry-cli releases set-commits --auto $SENTRY_VERSION