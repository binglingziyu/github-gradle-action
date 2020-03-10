FROM gradle:6.2.2-jdk8

COPY "entrypoint.sh" "/entrypoint.sh"

VOLUME ["/opt/docker/java/.gradle","/root/.gradle"]

VOLUME ["/opt/docker/java/.gradle","/github/home/.gradle"]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["check"]
