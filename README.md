# MALTEGO

![maltego](https://raw.githubusercontent.com/oda-alexandre/maltego/master/img/logo-maltego.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/maltego/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![maltego docker build](https://img.shields.io/docker/build/alexandreoda/maltego.svg)](https://hub.docker.com/r/alexandreoda/maltego)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Maltego](https://www.paterva.com/web7/buy/maltego-clients/maltego-ce.php) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/maltego/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name maltego -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/maltego p 5900:5900 -e DISPLAY alexandreoda/maltego
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/maltego/blob/master/LICENSE)
