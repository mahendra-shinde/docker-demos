## Build and run this demo
Visit https://www.katacoda.com/courses/docker/deploying-first-container

Click on Start Scenario (First Scenario)
Write following command in terminal:

    $ git clone https://github.com/mahendra-shinde/docker-demos
    $ cd docker-demos\tomcat

View the contents of docker file and build a new image:

    $ cat Dockerfile
    $ docker build -t myapp2:2 . 

Run a container on local port 80 mapped to tomcat port 8080

    $ docker run -d -p 80:8080 myapp2:2

Click on + button next to terminal, use "View HTTP PORT 80 on Host1"
    
