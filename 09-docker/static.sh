#!/bin/bash
docker build -t hometask-image .
docker run -d -p 8081:80 --name static -it hometask-image
docker cp index.html static:/var/www/html