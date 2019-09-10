#! /bin/bash

set -e

webui_ip=$1
ssh -L 8888:$webui_ip:80 ubuntu@34.236.245.102
