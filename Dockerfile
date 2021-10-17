FROM tomcat:8
RUN apt-get update
RUN apt-get install maven -y
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
RUN cp -r App42PaaS-Java-MySQL-Sample/target/* /usr/local/tomcat/
RUN mvn package
