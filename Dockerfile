FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client cmake yarn
RUN mkdir /transervicos
WORKDIR /transervicos
RUN wget -q -O - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yq
RUN apt-get install -y yarn
RUN yarn install --check-files
RUN gem install bundler
COPY Gemfile /transervicos/Gemfile
COPY Gemfile.lock /transervicos/Gemfile.lock
RUN bundle install
COPY . /transervicos

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
