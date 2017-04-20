FROM centos:7
MAINTAINER MahendraShinde@synergetics-india.com

# My base image is updated and then installs subversion
RUN  yum install -y subversion

# Define volume tobe used, I have used same path on host system and in docker container
VOLUME /opt/svn
EXPOSE 3690

# Copy my custom entrypoint script inside container
COPY docker-entry.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["svnserve","-d","--foreground","-r","/opt/svn"]
