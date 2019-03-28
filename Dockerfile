FROM ruby:2.6.1

LABEL maintainer="p.hoai.le@sonyged.com"
LABEL description="Base image for Rails in Ruby 2.6.1"
LABEL manual="Install tools required for project"

ENV LANG C.UTF-8
ENV BUNDLE_PATH /usr/local/bundle
ENV RAILS_LOG_TO_STDOUT 1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y \
  build-essential mysql-client libv8-dev curl \
  nodejs yarn && rm -rf /var/lib/apt/lists/*

RUN echo "gem: --no-document --no-rdoc --no-ri" >> ~/.gemrc

RUN gem install bundler

CMD ["/bin/sh"]
