FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base libc-dev libffi-dev python3-dev

# skip cache for the following install script (output is random invalidating docker cache for the next steps)
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache

# dependencies
RUN /usr/bin/python3.6 -m pip install --upgrade pip
RUN pip install feedcrawler --no-cache-dir

# add local files
COPY root/ /

# volumes and ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090

# Set environment variables.
ENV USER=""
ENV PASS=""
ENV DEVICE=""
ENV LOGLEVEL=""
ENV VERSION=""
