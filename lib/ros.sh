#!/bin/sh
ROSHOME=/srv/ros

mkdir -p $ROSHOME/rosbuild_ws
cd $ROSHOME/rosbuild_ws
rosws init . /opt/ros/indigo
mkdir package_dir
echo 'y' | rosws set $ROSHOME/package_dir -t .
echo "source $ROSHOME/rosbuild_ws/setup.bash" >> ~/.bashrc
