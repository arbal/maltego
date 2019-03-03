# MALTEGO

[![dockeri.co](https://dockeri.co/image/alexandreoda/maltego)](https://hub.docker.com/r/alexandreoda/maltego)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/maltego.svg)](https://microbadger.com/images/alexandreoda/maltego)
[![size](https://images.microbadger.com/badges/image/alexandreoda/maltego.svg)](https://microbadger.com/images/alexandreoda/maltego")
[![build](https://img.shields.io/docker/build/alexandreoda/maltego.svg)](https://hub.docker.com/r/alexandreoda/maltego)
[![automated](https://img.shields.io/docker/automated/alexandreoda/maltego.svg)](https://hub.docker.com/r/alexandreoda/maltego)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Maltego](https://www.paterva.com/web7/buy/maltego-clients/maltego-ce.php)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/maltego).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name maltego -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/maltego --network host -e DISPLAY alexandreoda/maltego
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/maltego/blob/master/LICENSE)
