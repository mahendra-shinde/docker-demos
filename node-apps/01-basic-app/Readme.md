## Build and run this demo
Visit https://www.katacoda.com/courses/docker/deploying-first-container

Click on Start Scenario (First Scenario)
Write following command in terminal:

    $ git clone https://github.com/mahendra-shinde/docker-demos
    $ cd docker-demos\node-apps\01-basic-app

View the contents of docker file and build a new image:

    $ cat Dockerfile
    $ docker build -t myapp3 . 

Run a container on local port 80 mapped to node port 8080

    $ docker run -d -p 80:8080 myapp3

Click on + button next to terminal, use "View HTTP PORT 80 on Host1"
    
