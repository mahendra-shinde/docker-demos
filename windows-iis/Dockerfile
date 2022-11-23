### name of file Must be 'Dockerfile'
### Every Docker file begins with "FROM " statement
FROM mcr.microsoft.com/windows/servercore:ltsc2022

RUN powershell Install-WindowsFeature Web-Server 
LABEL "Author"="Mahendra Shinde (MahendraShinde@synergetics-india.com"
RUN del /q \inetpub\wwwroot\*
COPY *.html /inetpub/wwwroot/
COPY ServiceMonitor.exe /
ENTRYPOINT C:\ServiceMonitor.exe w3svc

