FROM backstopjs/backstopjs:v3.8.8
LABEL MAINTAINER "eXo Platform <docker@exoplatform.com>"

# Workaround to be able to execute others command than "backstopjs" as entrypoint
COPY docker-entrypoint.sh /usr/bin/docker-entrypoint
RUN chmod u+x /usr/bin/docker-entrypoint
ENTRYPOINT ["/usr/bin/docker-entrypoint"]

CMD ["backstop"]
