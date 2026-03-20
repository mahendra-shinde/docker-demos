FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=Password123
ENV MYSQL_DATABASE=library_db
ENV MYSQL_PASSWORD=Password123
ENV MYSQL_USER=library_user

COPY data.sql /docker-entrypoint-initdb.d/