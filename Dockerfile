FROM python:3.8-alpine


LABEL version="0.0.1"
LABEL maintainer="jacobi@hackerrank.com"

ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
