#!/bin/sh
set -eu

cp /tag ./tag
TAG=$(./tag $GITHUB_EVENT_PATH)
echo "========================================"
echo Tag: $TAG
echo "========================================"