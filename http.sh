#! bin/bash
DIR=$(pwd)
cd $1

## Python web server
# /Users/patrick/anaconda/bin/python -m http.server 3000 &

## NginX
docker run -d -p 3001:80 -v $(pwd):/usr/share/nginx/html nginx

## Apache
# docker run -d -p 3000:80 -v $(pwd):/usr/local/apache2/htdocs httpd

cd $DIR
