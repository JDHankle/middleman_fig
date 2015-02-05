FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential curl
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
RUN bundle install
ADD . /app
