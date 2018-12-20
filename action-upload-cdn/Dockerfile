FROM alpine

LABEL "com.github.actions.name"="Upload CDN"
LABEL "com.github.actions.description"="Upload Static Files To CDN"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-upload-cdn"
LABEL maintainer="Wan Yi <mail@wanyi.me>"

ADD https://github.com/morphinewan/tools/releases/download/v1.2/qnsync /bin/qnsync
RUN chmod +x /bin/qnsync
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]