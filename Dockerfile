FROM open-liberty:21.0.0.1-kernel-slim-java8-openj9

LABEL maintainer="kishoreuriti@gmail.com"

USER root

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install apt-utils && \
    apt-get -y install curl
    
USER 1001

# copy server.xml
COPY --chown=1001:0 ./config/server.xml /config

# install needed packages from server.xml

RUN /liberty/bin/featureUtility installFeature jsfContainer-2.2 concurrent-1.0 localConnector-1.0 javaMail-1.5

RUN configure.sh
    
