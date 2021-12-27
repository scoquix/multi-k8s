# Multi-Containers-Docker
Multi-containers application that uses Docker and TravisCI to build, deploy and run simple React App.

## How it works?
TravisCI uses Docker to build images and publish them on DockerHub.

## Motivation
Due to the images are available on DockerHub it very easy to change the vendor between AWS, Azure and others.

Platform independence is very useful for growing applications which might increase in costs of maintanace.

## AWS Environment Details
 - Docker running on 64bit Amazon Linux 2/3.4.7
 - Redis running on Elastic Cache
 - Postgres instance running on Relatinal Database Service

## Licence
MIT
