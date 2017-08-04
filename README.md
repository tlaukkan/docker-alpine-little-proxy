# LittleProxy docker image based on Alpine linux docker image

Supported environment variables:

PROXY_PORT

PROXY_HOST_WHITE_LIST

## Build

gradle --refresh-dependencies
gradle clean build distZip

## Docker

docker build -t little-proxy .
docker tag little-proxy:latest tlaukkan/little-proxy:latest
docker push tlaukkan/little-proxy:latest
