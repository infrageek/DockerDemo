#FROM komljen/jdk-oracle
#MAINTAINER Alen Komljen <alen.komljen@live.com>
#
#ENV JAVA_HEAP_SIZE 512
#ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
#
#RUN \
#  apt-get update && \
#  apt-get -y install \
#          tomcat7 && \
#  rm -rf /var/lib/apt/lists/*
#
#RUN sed -i "s|#JAVA_HOME=.*|JAVA_HOME=$JAVA_HOME|g" /etc/default/tomcat7
#RUN sed -i "s|-Xmx128m|-Xmx${JAVA_HEAP_SIZE}m|g" /etc/default/tomcat7
#
#EXPOSE 8080
#RUN service tomcat7 start
#################################################
#FROM quintenk/jdk7-oracle
#MAINTAINER InfraGeek  "trijit@gmail.com"
#
#RUN apt-get -y install tomcat7
#RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7
#EXPOSE 8080
#CMD service tomcat7 start && tail -f /var/lib/tomcat7/logs/catalina.out
#################################################
#FROM java:7-jre

#ENV CATALINA_HOME /usr/local/tomcat
#ENV PATH $CATALINA_HOME/bin:$PATH
#RUN mkdir -p "$CATALINA_HOME"
#WORKDIR $CATALINA_HOME
#
#ENV TOMCAT_TGZ_URL http://www.us.apache.org/dist/tomcat/tomcat-7/v7.0.67/bin/apache-tomcat-7.0.67.tar.gz
#
#RUN set -x \
	#&& curl -fSL "$TOMCAT_TGZ_URL" -o tomcat.tar.gz \
	#&& tar -xvf tomcat.tar.gz --strip-components=1 \
	#&& rm bin/*.bat \
	#&& rm tomcat.tar.gz*
#
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
#################################################
FROM java:7-jre

RUN echo "I am running inside a container"
