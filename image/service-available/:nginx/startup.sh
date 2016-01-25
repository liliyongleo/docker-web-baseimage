#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

ln -sf ${CONTAINER_SERVICE_DIR}/:nginx/assets/nginx.conf /etc/nginx/nginx.conf
ln -sf ${CONTAINER_SERVICE_DIR}/:nginx/assets/server-partial-ssl.conf /etc/nginx/server-partial-ssl.conf
ln -sf ${CONTAINER_SERVICE_DIR}/:nginx/assets/conf.d/* /etc/nginx/conf.d

exit 0
