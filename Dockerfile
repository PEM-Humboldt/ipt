FROM tomcat:8.5-jdk8
LABEL MAINTAINERS="adevia@humboldt.org.co, acheca@humboldt.org.co"

ARG IPT_NAME=ROOT

# path y nombre del archivo donde se ubica el .war de forma local

ENV WAR_LOCAL_DIR=ipt_ceiba/ipt-2.5.5-CEIBA.war
ENV IPT_DATA_DIR=/srv/ipt

RUN rm -Rf /usr/local/tomcat/webapps \
    && mkdir -p /usr/local/tomcat/webapps/${IPT_NAME} \
    && mkdir -p ${IPT_DATA_DIR}

COPY ${WAR_LOCAL_DIR} /usr/local/tomcat/webapps/${IPT_NAME}

WORKDIR /usr/local/tomcat/webapps/${IPT_NAME}
RUN mv ipt-2.5.5-CEIBA.war ipt.war \
    && yum update && yum install -y unzip \
    && unzip -d /usr/local/tomcat/webapps/${IPT_NAME} ipt.war \
    && rm -f ipt.war

VOLUME /srv/ipt

EXPOSE 8080
CMD ["catalina.sh", "run"]
