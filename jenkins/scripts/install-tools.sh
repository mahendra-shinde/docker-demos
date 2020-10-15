## Installing Additional tools
cd /opt
# Download and extract Sonar Scanner
curl https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip | jar xv
# Download and extract Maven3
curl https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar xvz
chown -R jenkins:jenkins *
