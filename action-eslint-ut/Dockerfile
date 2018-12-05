FROM node:11

LABEL "com.github.actions.name"="ESLint & UT"
LABEL "com.github.actions.description"="Run ESLint and Unit Test"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-eslint-ut"
LABEL maintainer="Wan Yi <mail@wanyi.me>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]