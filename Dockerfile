FROM ubuntu:latest
WORKDIR /usr/src/app
COPY *.sh .
RUN chmod +x *.sh
