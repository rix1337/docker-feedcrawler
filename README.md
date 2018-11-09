# docker-rsscrawler

Dies ist das offizielle Docker-Image von RSScrawler.

RSScrawler automatisiert bequem das Hinzufügen von Links für den JDownloader.

[![PyPI version](https://badge.fury.io/py/rsscrawler.svg)](https://badge.fury.io/py/rsscrawler)
[![Chat aufrufen unter https://gitter.im/RSScrawler/Lobby](https://badges.gitter.im/RSScrawler/Lobby.svg)](https://gitter.im/RSScrawler/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/rix1337/RSScrawler.svg?branch=master)](https://travis-ci.org/rix1337/RSScrawler)
[![GitHub license](https://img.shields.io/github/license/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/blob/master/LICENSE.md)
[![GitHub issues](https://img.shields.io/github/issues/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/issues)
[![GitHub stars](https://img.shields.io/github/stars/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/network)

```
docker run -d \
  --name="RSScrawler" \
  -p port:9090 \
  -v /path/to/config/:/config:rw \
  -e PARAMETER=[--jd-user=<NUTZERNAME> --jd-pass=<PASSWORT> --jd-device=<GERÄTENAME>] \
  -e LOGLEVEL=[INFO/DEBUG/WARNING/ERROR/CRITICAL/NOTSET] \
  -v /path/to/jdownloader2/:/jd2:rw \
  rix1337/docker-rsscrawler
  ```

# Hinweis

Weitere Hinweise zur Einrichtung des Containers finden sich [im Wiki](https://github.com/rix1337/RSScrawler/wiki/1.3-Docker).

Wenn keine Zugangsdaten für My JDownloader per `-e PARAMETER` übergeben werden, ist für den erfolgreichen Start zwingend das Volumen `/jd2` mit dem Unterordner `folderwatch` einzurichten. Infos dazu finden sich [im Wiki](https://github.com/rix1337/RSScrawler/wiki/1.-Vorbereitung-im-JDownloader).
