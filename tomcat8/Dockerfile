############################################################
#  Building a tomcat8 container to deploy application 
#  inside webapps directory
###########################################################

# Using my pre-built Image which contains Ubuntu with openjdk8
FROM mahendrshinde/jdk8

MAINTAINER MahendraShinde@synergetics-india.com

# Making sure to update repository cache before installing tomcat8 package
RUN apt-get update && apt-get install -y tomcat8

# Set JAVA_HOME environment variable
# Base image has Soft-Link created at '/jdk8'
ENV JAVA_HOME /jdk8

# Expose port 8080 from container
EXPOSE 8080

# delete the existing ROOT application
RUN rm -R /var/lib/tomcat8/webapps/ROOT

# copy war file [Application package] to tomcat's deployment folder 
# and rename to ROOT.war to make it ROOT application
ADD data/*.war /var/lib/tomcat8/webapps/ROOT.war
 
# start tomcat as soon as container is booted! 
CMD "/usr/share/tomcat8/bin/startup.sh"
ENTRYPOINT "/bin/bash"
