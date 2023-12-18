FROM ghcr.io/linuxserver/baseimage-alpine:3.18
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base jq python3-dev python3-tkinter py3-pip

# dependencies
RUN pip3 install --upgrade pip \
  && pip3 install wheel
  
# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 9090

# Set environment variables.
ENV PYTHONUNBUFFERED=1
ENV USER=""
ENV PASS=""
ENV DEVICE=""
ENV LOGLEVEL=""
ENV VERSION=""
ENV DELAY=""

# Optionally set desired version for the build
ARG VS="false"
RUN echo "VS: ${VS}"

# Install specific version of FeedCrawler and clean up unneeded packages
RUN if [[ ${VS} == "false" ]] ; then echo "Grabbing latest feedcrawler version from pypi.org" && VERSION=$(curl -Ls https://pypi.org/pypi/feedcrawler/json | jq -r .info.version) ; else echo "Using version from workflow_dispatch input" && VERSION=$VS ; fi  && \
  echo $VERSION && \
  pip3 install feedcrawler=="$VERSION" --no-cache-dir && \
    apk del build-base jq 
