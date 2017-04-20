############################################################
#  Building a tomcat8 container to deploy application 
#  inside webapps directory
###########################################################

# Using my pre-built Image which contains Ubuntu with openjdk8
FROM mahendrshinde/jdk8

MAINTAINER MahendraShinde@synergetics-india.com

# Making sure to update repository cache before installing tomcat8 package
RUN apt-get update && apt-get install tomcat8

# Set JAVA_HOME environment variable
# Base image has Soft-Link created at '/jdk8'
ENV JAVA_HOME /jdk8

# Expose port 8080 from container
EXPOSE 8080

COPY 

ENRTRYPOINT ["/usr/share/tomcat8/bin/startup.sh"]
