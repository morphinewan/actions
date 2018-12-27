#!/bin/sh
set -eu

cat > ./slack.json <<EOL
{
    "text": "$GITHUB_REPOSITORY $GITHUB_WORKFLOW 完成",
    "username": "$GITHUB_ACTOR"
}
EOL