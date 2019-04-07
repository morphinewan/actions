FROM python:3

LABEL "com.github.actions.name"="Django Test"
LABEL "com.github.actions.description"="Run Django Test"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-django-test"
LABEL maintainer="Wan Yi <root@wanyi.dev>"


RUN sudo apt-get -y update
RUN sudo apt-get -y upgrade
RUN sudo apt-get install -y sqlite3 libsqlite3-dev
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]