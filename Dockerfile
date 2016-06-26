FROM phusion/baseimage:0.9.18
MAINTAINER rix1337

#Adding Custom files
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

# Install Requirements
RUN sudo apt-get update
RUN apt-get --yes --force-yes install python2.7 python-pycurl python-beautifulsoup
RUN pip install docopt feedparser lxml

# Volumes and Ports
VOLUME /config /jd2/folderwatch
