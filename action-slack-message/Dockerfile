FROM alpine

LABEL version="1.0.0"
LABEL maintainer="morphinewan"
LABEL repository="http://github.com/morphinewan/actions"
LABEL homepage="http://github.com/morphinewan/actions/action-slack-message"
LABEL "com.github.actions.name"="Slack"
LABEL "com.github.actions.description"="Generate a Slack message"
LABEL "com.github.actions.icon"="message-circle"
LABEL "com.github.actions.color"="white"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
