FROM jenkinsci/blueocean

WORKDIR /opt

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /opt/scripts/casc.yml

ENV ADMIN_USER=mahendra ADMIN_PASSWORD=password@1234 JENKINS_HOST=localhost SONARQUBE_URL=http://localhost:9000 ADMIN_EMAIL=mahendraunlimited@gmail.com

COPY scripts/ /opt/scripts/
USER root
RUN ["bash","/opt/scripts/install-tools.sh"]
USER jenkins

RUN /usr/local/bin/install-plugins.sh < /opt/scripts/plugins.txt
