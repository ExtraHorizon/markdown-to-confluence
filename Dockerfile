FROM python:3.11.6-alpine3.18

ARG SCRIPT_DIRECTORY=/usr/src/app/md-confluence
ENV SCRIPT_DIRECTORY="${SCRIPT_DIRECTORY}"
ENV ENTRYPOINT_SCRIPT_LOCATION="${SCRIPT_DIRECTORY}/entrypoint.sh"

RUN mkdir -p $SCRIPT_DIRECTORY
RUN apk add --no-cache git

COPY requirements.txt $SCRIPT_DIRECTORY
RUN cd $SCRIPT_DIRECTORY && pip install --no-cache-dir -r requirements.txt

COPY . $SCRIPT_DIRECTORY

ENTRYPOINT /bin/sh ${ENTRYPOINT_SCRIPT_LOCATION}
