FROM ubuntu:latest
RUN uname -m
RUN apt update
RUN apt install snapd -y
RUN snap install exercism
RUN exercism version
RUN exercism configure --token=456