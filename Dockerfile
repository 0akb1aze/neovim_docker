FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>
RUN apt-get update
RUN apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

WORKDIR /opt/

RUN git clone https://github.com/neovim/neovim.git

WORKDIR /opt/neovim
RUN make install
