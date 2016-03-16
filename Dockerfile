FROM linuxserver/baseimage.python
MAINTAINER rix1337

#Adding Custom files
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

# Install Requirements
RUN sudo apt-get update
RUN apt-get install python-pycurl python-bs4
RUN pip install docopt feedparser

# Volumes and Ports
VOLUME /config /jd2
