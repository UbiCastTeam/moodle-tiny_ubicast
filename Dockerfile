# Documentation for Moodle development:
# https://moodledev.io/general/development/tools/nodejs#grunt

FROM node:22-alpine

RUN apk add make git

RUN npm install -g grunt-cli

RUN git clone -b MOODLE_501_STABLE https://github.com/moodle/moodle.git /opt/moodle
WORKDIR /opt/moodle
RUN npm install

RUN mkdir -p /opt/moodle/public/lib/editor/tiny/plugins/ubicast
WORKDIR /opt/moodle/public/lib/editor/tiny/plugins/ubicast
