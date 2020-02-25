FROM maven:3-jdk-8 as builder
WORKDIR /app
COPY . .
RUN ["mvn","package","-DskipTests"]

FROM tomcat:latest
COPY --from=builder /app/target/demo-1.war /usr/local/tomcat/webapps/demo-1.war
