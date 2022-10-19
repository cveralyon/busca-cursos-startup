FROM ruby:3.1.1
# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem update && gem install rails && gem install bundler 
RUN mkdir /busca-cursos-startup
WORKDIR /busca-cursos-startup
COPY Gemfile /busca-cursos-startup/Gemfile
COPY Gemfile.lock /busca-cursos-startup/Gemfile.lock
RUN gem install opensearch-ruby
RUN bundle install
# RUN rails db:reset
COPY . /busca-cursos-startup
# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
