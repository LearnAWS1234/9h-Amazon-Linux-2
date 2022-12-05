#!/bin/bash -xe
cd root
docker rm -f 9hits && rm docker_etc/ -rf && docker run -v $(pwd)/docker_etc:/etc/ -d --network=host --name=9hits 9hitste/app /nh.sh --token=7bb1440ac55eeb5221d7d68c87d33406 --system-session --ex-proxy-sessions=2 --allow-crypto=no --session-note=$systemID --note=$systemID --hide-browser --cache-del=100 --ex-proxy-url=https://exproxy.buy9hits.com/
