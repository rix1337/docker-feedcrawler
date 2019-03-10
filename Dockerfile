FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache gcc libc-dev python3-dev

# dependencies
RUN pip install --upgrade pip
RUN pip install python-Levenshtein rsscrawler

# add local files
COPY root/ /

# node.js for cfscrape
RUN apk add nodejs --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/community/

# volumes and ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
