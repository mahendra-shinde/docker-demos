### Use Ubuntu base image as BUILDER 
FROM gcc as builder
LABEL Author=Mahendra-Shinde
LABEL AuthorEMail=MahendraShinde@synergetics-india.com

WORKDIR /app
## COPY the C Source code
COPY src/hello.c /app
## Compile with STATIC LINKING TO BINARIES
RUN ["gcc","-static","-o","hello","hello.c"]

## Use the SCRATCH IMAGE ( 0KB !!) as base 
FROM scratch
LABEL Author=Mahendra-Shinde
LABEL AuthorEMail=MahendraShinde@synergetics-india.com
WORKDIR /app
## Copy the STATIC binary from BUIDLER into this image
COPY --from=builder /app/hello /app/hello
## Start the Static Binary "hello" which doesn't depend on ANY EXTERNAL REFERENCE / LIB !!
CMD ["/app/hello"]
