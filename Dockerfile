FROM debian:stretch
MAINTAINER Dylan Baker <dylan@pnwbakers.com>

RUN apt-get update -qq && apt-get install -qq -y \
        locales \
        python3-pip \
        python \
        python-mako \
        gcc \
        flex \
        bison \
        zlibc \
        libelf-dev \
        libdrm-dev \
        libx11-xcb-dev \
        libxcb-dri3-dev \
        libxcb-present-dev \
        libxcb-sync-dev \
        libxshmfence-dev \
        libwayland-dev

RUN locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN pip3 install meson
