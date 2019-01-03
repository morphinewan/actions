#!/bin/sh

set -eu

echo $GITHUB_EVENT_NAME
cat $GITHUB_EVENT_PATH