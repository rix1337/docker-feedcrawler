FROM lsiobase/alpine.python
MAINTAINER rix1337

# Install Requirements
RUN pip install BeautifulSoup docopt feedparser requests cherrypy

# add local files
COPY root/ /

# Volumes and Ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
