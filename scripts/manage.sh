#!/bin/bash
CONTAINER="aatc-vms-app"

case "$1" in
  start)
    docker start $CONTAINER
    ;;
  stop)
    docker stop $CONTAINER
    ;;
  restart)
    docker restart $CONTAINER
    ;;
  remove)
    docker rm -f $CONTAINER
    ;;
  logs)
    docker logs -f $CONTAINER
    ;;
  shell)
    docker exec -it $CONTAINER bash
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|remove|logs|shell}"
    exit 1
    ;;
esac
