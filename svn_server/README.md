## Docker Container to run JUST SVN Server 
  NOTE: No Web UI provided, but once you start svn server, all clients can use commandline interface to communicate.

### How to start?
 `docker run -d -p 3690:3690 -v /opt/svn:/opt/svn --name svnserver --hostname svnserver.mahendra.in mahendra/svnserver`	

### Command I have used to build this image
  `docker build -t mahendrshinde/svnserver . `

