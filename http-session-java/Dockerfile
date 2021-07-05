FROM tomcat:9-jdk8-slim
EXPOSE  8080
WORKDIR "/usr/local/tomcat/"
RUN rm -r webapps/*
RUN apt update && apt install -y gettext-base
ADD webapps/test-session.war webapps/ROOT.war
COPY server.tmp /
COPY start.sh /
CMD ["sh","/start.sh"]