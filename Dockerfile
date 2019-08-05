FROM lgohr/github-hub
LABEL "com.github.actions.name"="Github Hub"
LABEL "com.github.actions.description"="An easy way to interact with Github from Actions"
LABEL "com.github.actions.icon"="git-branch"
LABEL "com.github.actions.color"="gray-dark"
LABEL "repository"="https://github.com/elgohr/Github-Hub-Action"
LABEL "maintainer"="Lars Gohr"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
