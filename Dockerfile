FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
RUN mkdir -p /my-special-folder
RUN chgrp -R 0 /my-special-folder
RUN chmod -R g=u /my-special-folder
COPY Dockerfile /my-special-folder
