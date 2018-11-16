FROM ubuntu

RUN apt-get update 
RUN apt-get install -y gcc

COPY hello.c /hello.c

RUN gcc -o hello.o hello.c 

CMD ./hello.o
