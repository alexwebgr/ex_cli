FROM ubuntu:latest
RUN echo `uname -m`
RUN apt update
RUN apt install -y curl
RUN  curl -L -O https://github.com/exercism/cli/releases/download/v3.0.13/exercism-linux-64bit.tgz
RUN tar -xf exercism-linux-64bit.tgz
RUN mkdir -p ~/bin
RUN mv exercism ~/bin
RUN echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
RUN ~/bin/exercism version
