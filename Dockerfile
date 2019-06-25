FROM ubuntu:18.04 as base
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install hping3 -y
ARG address=127.0.0.1
ARG port=80
CMD hping3 -S -p ${port} --tcp-mss 128 ${address}
