FROM node:11

LABEL "com.github.actions.name"="ESLint And Jest"
LABEL "com.github.actions.description"="Run ESLint and Jest Test"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-eslint-jest"
LABEL maintainer="Wan Yi <root@wanyi.dev>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]