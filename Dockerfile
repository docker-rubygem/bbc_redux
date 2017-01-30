FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.9.pre

RUN gem install bbc_redux --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bbc-redux"]
CMD ["--help"]
