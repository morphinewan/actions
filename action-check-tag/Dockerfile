FROM alpine

LABEL "com.github.actions.name"="Check Tag"
LABEL "com.github.actions.description"="Check Tag"
LABEL "com.github.actions.icon"="tag"
LABEL "com.github.actions.color"="yellow"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-check-tag"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

ADD ./bin/tag /tag
RUN chmod +x /tag
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]