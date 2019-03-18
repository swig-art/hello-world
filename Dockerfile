FROM ruby:2.4.0
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /var/app
COPY Gemfile /var/app/Gemfile
COPY Gemfile.lock /var/app/Gemfile.lock
RUN bundle install
COPY . /var/app
EXPOSE 3000
CMD bundle exec rails s
