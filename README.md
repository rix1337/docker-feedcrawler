# FeedCrawler

<img src="https://raw.githubusercontent.com/rix1337/FeedCrawler/main/feedcrawler/web_interface/vuejs_frontend/public/favicon.ico" data-canonical-src="https://raw.githubusercontent.com/rix1337/FeedCrawler/main/feedcrawler/web_interface/vuejs_frontend/public/favicon.ico" width="64" height="64" />

Dies ist das offizielle Docker-Image von FeedCrawler.

FeedCrawler automatisiert bequem das Hinzufügen von Links für den JDownloader.

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/rix1337/docker-feedcrawler)
![Docker Pulls](https://img.shields.io/docker/pulls/rix1337/docker-feedcrawler)
[![PyPI - Downloads](https://img.shields.io/pypi/dm/feedcrawler)](https://github.com/rix1337/FeedCrawler/releases)
[![Github Sponsorship](https://img.shields.io/badge/support-me-red.svg)](https://github.com/users/rix1337/sponsorship)
[![Discord](https://img.shields.io/discord/1075348594225315891)](https://discord.gg/enn4AG3VnM)
[![GitHub license](https://img.shields.io/github/license/rix1337/FeedCrawler.svg)](https://github.com/rix1337/FeedCrawler/blob/main/LICENSE.md)
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
  -e DELAY=30 \
  -e LOGLEVEL=[INFO/DEBUG/WARNING/ERROR/CRITICAL/NOTSET] \
  --log-opt max-size=50m \
  rix1337/docker-feedcrawler
  ```
  
# Spezifische Version nutzen

Das Image `rix1377/docker-feedcrawler` wird standardmäßig auf das `:latest`-Tag aufgelöst. Dieses wird mit jedem Release auf die neue Version aktualisiert. Mit jedem Release wird ebenfalls eine getaggte Version des Images erzeugt. Auf letztere kann man wechseln, um beispielsweise bei Fehlern in der neuen Version auf einen funktionierenden Stand zurück zu kehren.

Beispiel:

`docker pull rix1337/docker-feedcrawler:13.0.3`

# Optionale Parameter
 - `-e USER` (ab dem ersten Start, sofern unverändert)
 - `-e PASS` (ab dem ersten Start, sofern unverändert)
 - `-e DEVICE` (immer, sofern nur ein Gerät im MyJD-Konto vorhanden ist, sonst ab dem ersten Start, sofern unverändert)
 - `-e DELAY` (immer, sofern der erste Suchlauf nach Start nicht um diese ganze Zahl in Sekunden verzögert werden soll)
 
# Hostnamen festlegen

FeedCrawler kann zum durchsuchen beliebiger Webseiten verwendet werden. Ausschließlich der Anwender entscheidet, welche Seiten durchsucht werden sollen.
Diese Entscheidung trifft der Anwender selbstständig, indem er die _FeedCrawler.ini_ in der Kategorie _[Hostnames]_ manuell befüllt (_ab = xyz.com_).
Eingetragen werden dort reine Hostnamen (ohne _https://_).

**Die _FeedCrawler.ini_ liegt unter dem `/config`-Volume ab.**

##### Dabei gilt
* Welcher Hostname aufgerufen wird entscheidet allein der Anwender.
* Ist nicht mindestens ein Hostname gesetzt, wird der FeedCrawler nicht starten.
* Passt die aufgerufene Seite hinter dem jeweiligen Hostnamen nicht zum Suchmuster des FeedCrawlers, kann es zu Fehlern kommen.
* Weder FeedCrawler noch der Autor benennen oder befürworten spezifische Hostnamen. Fragen hierzu werden kommentarlos geschlossen!

# Hinweis

Weitere Hinweise zur Einrichtung des Containers finden sich [im Wiki](https://github.com/rix1337/FeedCrawler/wiki/1.1-Installation-(Docker)).
