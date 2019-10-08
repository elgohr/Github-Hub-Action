FROM lgohr/github-hub
LABEL "repository"="https://github.com/elgohr/Github-Hub-Action"
LABEL "maintainer"="Lars Gohr"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
