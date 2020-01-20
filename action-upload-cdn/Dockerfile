FROM alpine

LABEL "com.github.actions.name"="Upload CDN"
LABEL "com.github.actions.description"="Upload Static Files To CDN"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-upload-cdn"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

ADD https://github.com/morphinewan/tools/releases/download/1.7.2/qnsync /bin/qnsync
RUN chmod +x /bin/qnsync
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
