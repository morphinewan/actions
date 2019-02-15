FROM getsentry/sentry-cli:latest

LABEL version="1.0.0"
LABEL maintainer="morphinewan"
LABEL "com.github.actions.name"="Associate Commits with a Sentry Release"
LABEL "com.github.actions.description"="Associate Commits with a Sentry Release."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]