# syntax=docker/dockerfile:1
FROM ruby:2.7.3
RUN apt update && apt install -y build-essential libpq-dev nodejs

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

COPY . /myapp/

EXPOSE 3000
