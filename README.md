# MALTEGO

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904454/vector_logo_grey_small_edge_512_darker.png" width="200" height="200"/>

## INDEX

- [MALTEGO](#maltego)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [FIRST UPDATE](#first-update)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/maltego/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/maltego/commits/master)


## FIRST UPDATE

Date: 01-01-01


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
