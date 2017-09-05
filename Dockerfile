FROM rameshr/tomcat:latest

ENV INMEMORY_VERSION=1.1.0
ENV CONTEXT_NAME=alfresco

RUN wget -O  /tmp/${CONTEXT_NAME}.war https://repository.apache.org/service/local/repositories/releases/content/org/apache/chemistry/opencmis/chemistry-opencmis-server-inmemory/${INMEMORY_VERSION}/chemistry-opencmis-server-inmemory-${INMEMORY_VERSION}.war && \
    cp /tmp/${CONTEXT_NAME}.war /opt/tomcat/webapps/ && \
    jar -xvf /opt/tomcat/webapps/${CONTEXT_NAME}.war && \
    rm -rf /tmp/${CONTEXT_NAME}.war