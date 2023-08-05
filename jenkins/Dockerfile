FROM jenkins/jenkins:lts-jdk11

WORKDIR /opt

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /opt/scripts/casc.yml

ENV ADMIN_USER=mahendra ADMIN_PASSWORD=password@1234 JENKINS_HOST=localhost SONARQUBE_URL=http://localhost:9000 ADMIN_EMAIL=admin@email

COPY scripts/ /opt/scripts/
USER root
RUN ["bash","/opt/scripts/install-tools.sh"]
USER jenkins

RUN jenkins-plugin-cli -f /opt/scripts/plugins.txt
