# Упаковать Java приложение в Docker- контейнер. Процесс сборки производить также в контейнере
FROM tomcat
RUN apt-get update && \
    apt-get install -y git maven && \
    mkdir $CATALINA_HOME/build
WORKDIR $CATALINA_HOME/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
    mvn package -f boxfuse-sample-java-war-hello && \
    mv boxfuse-sample-java-war-hello/target/hello-1.0.war $CATALINA_HOME/webapps/hello.war



