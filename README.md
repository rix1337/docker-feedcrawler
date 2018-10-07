# docker-rsscrawler
Automating JDownloader Downloads (German!)

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
  rix1337/docker-rsscrawler
  ```
Set `NO_UPDATES` to `true` to disable updates.
