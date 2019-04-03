FROM alpine

LABEL "com.github.actions.name"="Update Submodule"
LABEL "com.github.actions.description"="Update Git Submodule"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-update-submodule"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    apk add --no-cache gnupg && \
    apk add --no-cache openssh-client

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]