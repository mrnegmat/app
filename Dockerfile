FROM tomcat:latest
RUN apt update && \
    apt install -y maven git default-jdk && \
    mkdir $CATALINA_HOME/build
WORKDIR $CATALINA_HOME/build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
    mvn package -f boxfuse-sample-java-war-hello/pom.xml && \
    mv boxfuse-sample-java-war-hello/target/hello-1.0.war $CATALINA_HOME/webapps/hello.war

