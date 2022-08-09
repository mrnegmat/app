# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере
FROM tomcat:latest
RUN apt-get update && apt-get install -y git maven default-jdk 
RUN mkdir /home/myFolder
RUN cd /home/myFolder
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN cd boxfuse-sample-java-war-hello && mvn package -e
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war usr/local/tomcat/bin/


#CATALINA_BASE:   /usr/local/tomcat
#CATALINA_HOME:   /usr/local/tomcat
#CATALINA_TMPDIR: /usr/local/tomcat/temp
#JRE_HOME:        /usr
#CLASSPATH:       /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar