# MALTEGO

<img src="https://ciphertrace.com/wp-content/uploads/2018/06/maltego.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/maltego/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/maltego/commits/master)


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
