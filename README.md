# docker-feedcrawler

Dies ist das offizielle Docker-Image von FeedCrawler (ehemals RSScrawler).

RSScrawler automatisiert bequem das Hinzufügen von Links für den JDownloader.

[![PyPI version](https://badge.fury.io/py/feedcrawler.svg)](https://badge.fury.io/py/feedcrawler)
[![PyPI - Downloads](https://img.shields.io/pypi/dm/feedcrawler)](https://github.com/rix1337/FeedCrawler/releases)
[![Github Sponsorship](https://img.shields.io/badge/support-me-red.svg)](https://github.com/users/rix1337/sponsorship)
[![Chat aufrufen unter https://gitter.im/FeedCrawler/community](https://badges.gitter.im/FeedCrawler/community.svg)](https://gitter.im/FeedCrawler/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.com/rix1337/FeedCrawler.svg?branch=master)](https://travis-ci.com/rix1337/FeedCrawler)
[![GitHub license](https://img.shields.io/github/license/rix1337/FeedCrawler.svg)](https://github.com/rix1337/FeedCrawler/blob/master/LICENSE.md)
[![GitHub issues](https://img.shields.io/github/issues/rix1337/FeedCrawler.svg)](https://github.com/rix1337/FeedCrawler/issues)
[![GitHub stars](https://img.shields.io/github/stars/rix1337/FeedCrawler.svg)](https://github.com/rix1337/FeedCrawler/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rix1337/FeedCrawler.svg)](https://github.com/rix1337/FeedCrawler/network)


# Starten

```
docker run -d \
  --name="FeedCrawler" \
  -p port:9090 \
  -v /path/to/config/:/config:rw \
  -e USER=NUTZERNAME \ 
  -e PASS=PASSWORT \
  -e DEVICE=GERÄTENAME \
  -e LOGLEVEL=[INFO/DEBUG/WARNING/ERROR/CRITICAL/NOTSET] \
  --log-opt max-size=50m \
  rix1337/docker-rsscrawler
  ```

# Optionale Parameter
 - `-e USER` (ab dem ersten Start, sofern unverändert)
 - `-e PASS` (ab dem ersten Start, sofern unverändert)
 - `-e DEVICE` (immer, sofern nur ein Gerät im MyJD-Konto vorhanden ist, sonst ab dem ersten Start, sofern unverändert)
 - `-e LOGLEVEL` (immer)
 
#### Hostnamen festlegen

FeedCrawler kann zum durchsuchen beliebiger Webseiten verwendet werden. Ausschließlich der Anwender entscheidet, welche Seiten durchsucht werden sollen.
Diese Entscheidung trifft der Anwender selbstständig, indem er die _FeedCrawler.ini_ in der Kategorie _[Hostnames]_ manuell befüllt (_ab = xyz.com_).
Eingetragen werden dort reine Hostnamen (ohne _https://_).

##### Dabei gilt
* Welcher Hostname aufgerufen wird entscheidet allein der Anwender.
* Ist nicht mindestens ein Hostname gesetzt, wird der FeedCrawler nicht starten.
* Passt die aufgerufene Seite hinter dem jeweiligen Hostnamen nicht zum Suchmuster des FeedCrawlers, kann es zu Fehlern kommen.
* Weder FeedCrawler noch der Autor benennen oder befürworten spezifische Hostnamen. Fragen hierzu werden kommentarlos geschlossen!

# Hinweis

Weitere Hinweise zur Einrichtung des Containers finden sich [im Wiki](https://github.com/rix1337/FeedCrawler/wiki/1.1-Installation-(Docker)).
