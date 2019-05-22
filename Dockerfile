FROM alpine:3.8

LABEL maintainer="Quintype Developers <dev-core@quintype.com>"

RUN apk add --no-cache \
  cmake \
  git=2.18.1-r1 \
  openssh \
  nodejs=8.14.0-r0 \
  ruby=2.5.5-r0 \
  nodejs-npm \
  ruby-webrick\
  ruby-etc

RUN apk add --no-cache \
  build-base \
  libc-dev \
  libffi-dev \
  libxml2-dev \
  libxslt-dev \
  linux-headers \
  postgresql-dev \
  ruby-dev \
  tzdata \
  libgcc \
  libstdc++ \
  libx11 \
  glib \
  libxrender \
  libxext \
  libintl \
  libcrypto1.0 \
  libssl1.0 \
  ttf-dejavu \
  ttf-droid \
  ttf-freefont \
  ttf-liberation \
  ttf-ubuntu-font-family

COPY wkhtmltopdf /usr/local/bin/

RUN chmod +x /usr/local/bin/wkhtmltopdf && \
  gem install bundler -v '~> 1.17.0' --no-document
