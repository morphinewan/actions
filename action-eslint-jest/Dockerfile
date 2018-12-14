FROM node:11

LABEL "com.github.actions.name"="ESLint And Jest"
LABEL "com.github.actions.description"="Run ESLint and Jest Test"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-eslint-jest"
LABEL maintainer="Wan Yi <mail@wanyi.me>"

# 安装环境依赖#
yarn install

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]