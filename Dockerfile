FROM lsiobase/alpine.python3
MAINTAINER rix1337

# Install Requirements
RUN pip install --upgrade pip
RUN pip install bs4 cfscrape docopt feedparser flask future fuzzywuzzy[speedup] gevent lxml python-dateutil requests[socks]

# add local files
COPY root/ /

# node.js for cfscrape
RUN apk add nodejs --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/community/

# Volumes and Ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
