# Nimble Witness Docker 
These files help you to run you Nimble Automatic SwitchOver ASO Witness inside a docker container.
As i´m not allowed to distribute the binaries here are only the needed Dockerfile and docker-compose to run it.
Please be aware there is **no official support** for this type of deployment but it works great for me.

## Versions
Witness binary is updated every once and then so please make sure you are using the right dockerfile and download the right binary for your array version.

## Build
1. download needed binary via InfoSight.hpe.com
2. place it in the same directory as the Dockerfile
3. change password in Dockerfile
4. run `docker build -t nimble/witnessd .`

## Run
- make sure you have docker-compose setup
- use `docker-compose up -d` to start the container
- if needed adjust the exposed port in the composefile so you can run multiple instances on one machine