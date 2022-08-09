# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере
FROM tomcat:latest
RUN apt-get update && apt-get install -y git maven default-jdk 
WORKDIR /usr/local/tomcat
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN chmod 777 boxfuse-sample-java-war-hello 
RUN cd boxfuse-sample-java-war-hello 
RUN mvn package 
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps


#CATALINA_BASE:   /usr/local/tomcat
#CATALINA_HOME:   /usr/local/tomcat
#CATALINA_TMPDIR: /usr/local/tomcat/temp
#JRE_HOME:        /usr
#CLASSPATH:       /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar