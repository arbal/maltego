# MALTEGO

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904454/vector_logo_grey_small_edge_512_darker.png)

- [MALTEGO](#maltego)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/maltego/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/maltego/commits/master)

## INTRODUCTION

Docker image of :

- [Maltego](https://www.paterva.com/web7/buy/maltego-clients/maltego-ce.php)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/maltego/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/maltego)

## PREREQUISITES

Use [docker](https://www.docker.com)

## BUILD

### DOCKER RUN

```\
docker run -d \
--name maltego \
--network host \
-e DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v ${HOME}:/home/maltego \
alexandreoda/maltego
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  maltego:
    container_name: maltego
    image: alexandreoda/maltego
    restart: no
    network_mode: host
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/maltego"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/maltego/blob/master/LICENSE)
