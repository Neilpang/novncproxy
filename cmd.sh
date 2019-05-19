#!/bin/sh



cd /noVNC-master/utils

exec  ./launch.sh  --vnc "${VNC_SERVER}:${VNC_PORT}"

