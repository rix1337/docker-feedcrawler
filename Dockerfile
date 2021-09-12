FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base libc-dev libffi-dev g++ gcc libxslt-dev python3-dev

# dependencies
RUN /usr/bin/python3.6 -m pip install --upgrade pip \
  && pip install wheel \
  && pip install git+https://github.com/alberanid/imdbpy
  
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

# invalidate build cache on repo commit
ADD "https://api.github.com/repos/rix1337/FeedCrawler/commits?per_page=1" latest_commit

# feedcrawler
RUN pip install feedcrawler --no-cache-dir
