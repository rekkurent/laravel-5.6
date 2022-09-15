#!/bin/bash
file="/etc/nginx/ssl/nginx.key"
if [ ! -f "$file" ]
then
    openssl req \
            -x509 \
            -subj "/C=US/ST=Denial/L=Nowhere/O=Dis" \
            -nodes \
            -days 365 \
            -newkey rsa:2048 \
            -keyout /etc/nginx/ssl/nginx.key \
            -out /etc/nginx/ssl/nginx.cert
fi