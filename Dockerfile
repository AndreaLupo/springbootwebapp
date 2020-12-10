FROM centos

# -y to say yes on prompts
RUN yum install -y java
VOLUME /tmp
ADD /spring-boot-web-0.0.1-SNAPSHOT.jar myapp.jar
# update the date
RUN sh -c 'touch /myapp.jar'

ENTRYPOINT ["java",  "-Djava.security.egd=file:/dev/./urandom", "-jar", "/myapp.jar"]