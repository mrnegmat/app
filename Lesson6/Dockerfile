FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y tomcat9
EXPOSE 8080
RUN apt-get install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello && mvn package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
CMD ["usr/share/tomcat9/bin/cataline.sh","run"]