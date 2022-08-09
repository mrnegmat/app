# Упаковать Java приложение в Docker- контейнер. 
FROM ubuntu:latest
RUN apt-get update && apt-get install -y git maven tomcat9
EXPOSE 5000
ENV CATALINA_BASE=/var/lib/tomcat9
ENV CATALINA_HOME=/usr/share/tomcat9
ENV CATALINA_TMPDIR=/tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN chmod 777 boxfuse-sample-java-war-hello 
RUN cd boxfuse-sample-java-war-hello && mvn package 
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps
CMD ["/usr/share/tomcat9/bin/cataline.sh","run"]


#CATALINA_BASE:   /usr/local/tomcat
#CATALINA_HOME:   /usr/local/tomcat
#CATALINA_TMPDIR: /usr/local/tomcat/temp
#JRE_HOME:        /usr
#CLASSPATH:       /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar