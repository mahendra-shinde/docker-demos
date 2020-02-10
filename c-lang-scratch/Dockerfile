### Use Ubuntu base image as BUILDER 
FROM ubuntu:latest as builder
WORKDIR /app
## COPY the C Source code
COPY hello.c /app
## Install GCC Compiler 
RUN ["apt","update","-y"]
RUN ["apts","install","gcc","-y"]
## Use GCC Compiler to compile a STATIC binary for given C Code
RUN ["gcc","-static","-o hello","hello.c"]

## Use the SCRATCH IMAGE ( 0KB !!)
FROM scratch
WORKDIR /app
## Copy the STATIC binary from BUIDLER into this image
COPY --from=builder hello .
## Start the Static Binary "hello" which doesn't depend on ANY EXTERNAL REFERENCE / LIB !!
CMD ["/app/hello"]