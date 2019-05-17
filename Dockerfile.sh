# Sample Docker file
FROM ubuntu:18.04
MAINTAINER "Juned Khan"

RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y vim



FROM tomcat
COPY addressbook.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]

pod.xml

apiVersion: v1
kind: Pod
metadata:
  name: sample-pod
  labels:
    env: prod #User defined, could be anything
    type: DC
spec:
  containers:
  - name: sample-cotainer
    image: nginx
    ports:
    - containerPort: 80
    - containerPort: 443