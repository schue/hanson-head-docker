#!/bin/sh

DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y --force-yes \
    ros-indigo-libg2o \
    ros-indigo-cv-bridge \
    liblapack-dev \
    libblas-dev \
    freeglut3-dev \
    libqglviewer-dev \
    libsuitesparse-dev \
    libx11-dev \
    wget \
    git

apt-get clean
