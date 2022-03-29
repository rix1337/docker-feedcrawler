FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base jq python3-dev

# dependencies
RUN /usr/bin/python3.6 -m pip install --upgrade pip \
  && pip install wheel \
  && pip install \
beautifulsoup4==4.10.0 \
cinemagoer==2022.2.11 \
docopt==0.6.2 \
flask==2.0.3 \
html5lib==1.1 \
passlib==1.7.4 \
pycryptodomex==3.14.1 \
python-dateutil==2.8.2 \
rapidfuzz==2.0.2 \
requests==2.27.1 \
simplejson==3.17.6 \
waitress==2.0.0
  
# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 9090

# Set environment variables.
ENV USER=""
ENV PASS=""
ENV DEVICE=""
ENV LOGLEVEL=""
ENV VERSION=""

# Optionally set desired version for the build
ARG VS="false"
RUN echo "VS: ${VS}"

# Install specific version of FeedCrawler and clean up unneeded packages
RUN if [[ ${VS} == "false" ]] ; then echo "Grabbing latest feedcrawler version from pypi.org" && VERSION=$(curl -Ls https://pypi.org/pypi/feedcrawler/json | jq -r .info.version) ; else echo "Using version from workflow_dispatch input" && VERSION=$VS ; fi  && \
  echo $VERSION && \
  pip install feedcrawler=="$VERSION" --no-cache-dir && \
    apk del build-base libc-dev libffi-dev g++ gcc jq 
