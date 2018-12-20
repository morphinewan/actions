FROM alpine

LABEL "com.github.actions.name"="Github Check Commit Status"
LABEL "com.github.actions.description"="Github Check Commit Status"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-check-status"
LABEL maintainer="Wan Yi <mail@wanyi.me>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]