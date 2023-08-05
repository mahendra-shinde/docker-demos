# Pre-Configured Jenkins Container Image

The image built here would have following component pre-installed.

1.  Jenkins with plugins like git maven docker and blueocean. complete list of plugins is available [here](./plugins.txt)

2.  The default username is `mahendra` and password is `password@1234`. you can specify your user credentials at `docker run` command.


## Example user cases

1.  With all defaults

    ```
    $ docker run -d -p 8080:8080 mahendrshinde/jenkins:blueocean 
    ```

2.  With all options overridden

    ```
    $ docker run -d -p 8080:8080 -e ADMIN_USER=mahendra -e ADMIN_PASSWORD=password@1234 -e JENKINS_HOST=localhost  mahendrshinde/jenkins 
    ```

    > Where, the ENVs are:

    Env | Descriptions | Default Values 
    ----|--------------|--------
    ADMIN_USER | Default Admin username | mahendra
    ADMIN_PASSWORD | Default User password | password@1234
    JENKINS_HOST | Hostname or DNS for container | localhost 
    ADMIN_EMAIL | Email address for Jenkins Administrator | your@email
    SONARQUBE_URL | URL for SonarQube server, you may use sonar-cloud as well ! | http://localhost:9000


> for Configuration as Code, took help from [this](https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code) blog