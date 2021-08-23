FROM ubuntu:20.04

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD build.sh /build.sh

RUN apt update \
  && apt install -y python3 python3-pip git \
  && ln -s /usr/bin/python3.8 /usr/bin/python \
  && rm -rf /var/lib/apt/lists/* \
  && chmod +x build.sh \
  && pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir --upgrade setuptools \
  && pip install --no-cache-dir --upgrade wheel \
  && pip install --no-cache-dir --upgrade twine

WORKDIR /srv

CMD ["/build.sh"]
