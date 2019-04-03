FROM alpine

LABEL "com.github.actions.name"="Send Email"
LABEL "com.github.actions.description"="Send Email By mailgun"
LABEL "com.github.actions.icon"="mail"
LABEL "com.github.actions.color"="white"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-upload-cdn"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

RUN apk add --no-cache curl
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]