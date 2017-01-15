docker-rsscrawler
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
  rix1337/docker-rsscrawler
  ```
Set ```NO_UPDATES``` as environment var to disable updates.
