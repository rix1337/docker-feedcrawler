FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base libc-dev libffi-dev python3-dev

# chromium
RUN apk -U add chromium udev ttf-freefont

# add local files
COPY root/ /

# dependencies
RUN pip install --upgrade pip
RUN pip install rsscrawler-*.whl --no-cache-dir

# volumes and ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
