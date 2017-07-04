FROM lsiobase/alpine.python
MAINTAINER rix1337

# Install Requirements
RUN pip install beautifulsoup4 docopt lxml requests cherrypy

# add local files
COPY root/ /

# Volumes and Ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
