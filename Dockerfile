FROM lsiobase/alpine.python
MAINTAINER rix1337

# Install Requirements
RUN pip install BeautifulSoup docopt feedparser lxml requests cherrypy cfscrape

# TODO install nodejs for cfscrape!

# add local files
COPY root/ /

# Volumes and Ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
