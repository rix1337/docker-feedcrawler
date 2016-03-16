FROM linuxserver/baseimage.python
MAINTAINER rix1337

#Adding Custom files
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

# Install Requirements
RUN apt-get update -qq && \
    apt-get install -qq --force-yes pycurl && \
    apt-get autoremove && \
    apt-get autoclean && \
	pip install --upgrade setuptools && \ 
    pip install docopt feedparser BeautifulSoup

# Volumes and Ports
VOLUME /config /jd2
