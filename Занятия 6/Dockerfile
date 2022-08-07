# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере
FROM tomcat
RUN apt install -y maven git
RUN mkdir $CATALINA_HOME/build
WORKDIR $CATALINA_HOME/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN mvn package -f boxfuse-sample-java-war-hello/pom.xml
RUN mv boxfuse-sample-java-war-hello/hello-1.0.war $CATALINA_HOME/webapps/hello.war



