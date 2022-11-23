# Build container images with "Dockerfile"

1. Create Three HTML files

    - index.html
    - contactus.html
    - aboutus.html

2.  Create a `Dockerfile`

    ```
    FROM mcr.microsoft.com/windows/servercore:ltsc2022
    RUN powershell Install-WindowsFeature Web-Server 
    RUN del /q \inetpub\wwwroot\*
    COPY *.html /inetpub/wwwroot/
    COPY ServiceMonitor.exe /
    ENTRYPOINT C:\ServiceMonitor.exe w3svc
    ```

3.  Using terminal / powershell / cmd 

    ```
    $ docker build -t myapp01 .  
    ## repeate above command to view build cache
    # To avoid using build cache
    $ docker build --no-cache -t myapp01 . 
    ## Verify the image built
    $ docker images myapp01
    ## View the JSON metadata
    $ docker inspect myapp01
    ```

4.  Create Container to TEST newly built image

    ```
    $ docker run --name t1 -d -p 8080:80 myapp01
    $ curl localhost:8080
    $ docker stop t1
    $ docker rm t1
    ```