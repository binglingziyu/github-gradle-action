FROM gradle:6.2.2-jdk8

COPY "entrypoint.sh" "/entrypoint.sh"

VOLUME ["/opt/docker/java/.m2","/root/.m2"]

VOLUME ["/opt/docker/java/.m2","/github/home/.m2"]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["check"]
