FROM cirrusci/flutter:latest

LABEL "com.github.actions.name"="Flutter Test"
LABEL "com.github.actions.description"="Run Flutter Test"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-flutter-test"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]