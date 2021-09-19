#!/bin/zsh
docker run -it --name base -v${PWD}:/root/ros2test --rm base:v1 /usr/bin/zsh
