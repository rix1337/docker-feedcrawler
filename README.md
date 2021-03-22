# docker-rsscrawler

Dies ist das offizielle Docker-Image von RSScrawler.

RSScrawler automatisiert bequem das Hinzufügen von Links für den JDownloader.

[![PyPI version](https://badge.fury.io/py/rsscrawler.svg)](https://badge.fury.io/py/rsscrawler)
[![Github Sponsorship](https://img.shields.io/badge/support-me-red.svg)](https://github.com/users/rix1337/sponsorship)
[![Chat aufrufen unter https://gitter.im/RSScrawler/Lobby](https://badges.gitter.im/RSScrawler/Lobby.svg)](https://gitter.im/RSScrawler/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![GitHub license](https://img.shields.io/github/license/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/blob/master/LICENSE.md)
[![GitHub issues](https://img.shields.io/github/issues/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/issues)
[![GitHub stars](https://img.shields.io/github/stars/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rix1337/RSScrawler.svg)](https://github.com/rix1337/RSScrawler/network)

# Starten

```
docker run -d \
  --name="RSScrawler" \
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

RSScrawler kann zum durchsuchen beliebiger Webseiten verwendet werden. Ausschließlich der Anwender entscheidet, welche Seiten durchsucht werden sollen.
Diese Entscheidung trifft der Anwender selbstständig, indem er die _RSScrawler.ini_ in der Kategorie _[Hostnames]_ manuell befüllt (_ab = xyz.com_).
Eingetragen werden dort reine Hostnamen (ohne _https://_).

##### Dabei gilt
* Welcher Hostname aufgerufen wird entscheidet allein der Anwender.
* Ist nicht mindestens ein Hostname gesetzt, wird der RSScrawler nicht starten.
* Passt die aufgerufene Seite hinter dem jeweiligen Hostnamen nicht zum Suchmuster des RSScrawlers, kann es zu Fehlern kommen.
* Weder RSScrawler noch der Autor benennen oder befürworten spezifische Hostnamen. Fragen hierzu werden kommentarlos geschlossen!

# Hinweis

Weitere Hinweise zur Einrichtung des Containers finden sich [im Wiki](https://github.com/rix1337/RSScrawler/wiki/1.1-Installation-(Docker)).
