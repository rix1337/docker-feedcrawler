# docker-rsscrawler
This docker setup for my python-based script crawls pre-defined RSS feeds and outputs JD2-crawljobs
Only useful for German users. Very advanced and user friendly features.

Learn more at:
https://github.com/rix1337/RSScrawler

```
docker run -d \
  --name="RSScrawler" \
  -p port:9090 \
  -v /path/to/config/:/config:rw \
  -v /path/to/jdownloader2/:/jd2:rw \
  -e LOGLEVEL=[INFO/DEBUG/WARNING/ERROR/CRITICAL/NOTSET] \
  -e PARAMETER=[--testlauf] \
  -e NO_UPDATES=[false/true] \
  -e BRANCH=master \
  -e REPO=https://github.com/rix1337/RSScrawler.git \
  rix1337/docker-rsscrawler
  ```
Set `NO_UPDATES` to `true` to disable updates.
