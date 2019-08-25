# MALTEGO

<img src="https://ciphertrace.com/wp-content/uploads/2018/06/maltego.png" width="200" height="200"/>

## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/maltego/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/maltego/commits/master)

## INTRODUCTION

Docker image of :

- [Maltego](https://www.paterva.com/web7/buy/maltego-clients/maltego-ce.php)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/maltego/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/maltego)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name maltego -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/maltego --network host -e DISPLAY alexandreoda/maltego```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/maltego/blob/master/LICENSE)
