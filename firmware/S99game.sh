#!/bin/sh
case "$1" in
    start)
        /root/game/frontend.sh &
        ;;
    stop)
        killall frontend.arm64
        ;;
esac
