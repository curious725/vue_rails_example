FROM ruby:2.2.9
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /vue_rails_example
WORKDIR /vue_rails_example
COPY Gemfile /vue_rails_example/Gemfile
COPY Gemfile.lock /vue_rails_example/Gemfile.lock
RUN bundle install
COPY . /vue_rails_example
