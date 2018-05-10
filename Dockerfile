FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /refinery
WORKDIR /refinery
COPY Gemfile /refinery/Gemfile
COPY Gemfile.lock /refinery/Gemfile.lock
RUN bundle install
COPY . /refinery

