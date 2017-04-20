#################################################################
##
## Mahendra's docker container to deploy given web application 
##            on tomcat 8.
##  Application archive [.war file] must be stored in same location
##  as this dockerfile.
#################################################################
FROM tomcat:8

MAINTAINER MahendraShinde@synergetics-india.com

EXPOSE  8080
WORKDIR "/usr/local/tomcat/"

RUN ["rm","-R","webapps/ROOT"]

ADD *.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh","run"]
