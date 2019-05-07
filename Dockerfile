FROM ruby:2.4.3

RUN echo "deb [check-valid-until=no] http://cdn-fastly.deb.debian.org/debian jessie main" > /etc/apt/sources.list.d/jessie.list
RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list
RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
RUN echo "Acquire::Check-Valid-Until false;" | tee -a /etc/apt/apt.conf.d/10-nocheckvalid
RUN apt-get update && apt-get install -y nodejs postgresql-client

RUN mkdir /strong_health_app
WORKDIR /strong_health_app
COPY Gemfile /strong_health_app/Gemfile
COPY Gemfile.lock /strong_health_app/Gemfile.lock
RUN bundle install
COPY . /strong_health_app
