FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

WORKDIR /opt/

git clone https://github.com/neovim/neovim.git

WORKDIR /opt/neovim
RUN make install
