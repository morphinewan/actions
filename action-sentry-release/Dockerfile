FROM node:11

LABEL version="1.0.0"
LABEL maintainer="morphinewan"
LABEL "com.github.actions.name"="Associate Commits with a Sentry Release"
LABEL "com.github.actions.description"="Associate Commits with a Sentry Release."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN npm install
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]