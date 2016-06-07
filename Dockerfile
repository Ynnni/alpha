FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler

ENV APP /app
ENV BUNDLE_PATH /bundle
ENV BUNDLE_JOBS 20

RUN mkdir $APP
WORKDIR $APP

ADD Gemfile $APP/Gemfile
ADD Gemfile.lock $APP/Gemfile.lock
ADD . $APP
