FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y git nodejs npm yarn postgresql-client
RUN mkdir /app
WORKDIR /app
RUN gem install bundler:2.1.4
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY package.json yarn.lock /app/
RUN apt remove cmdtest -y
RUN npm install -g yarn
RUN yarn install
RUN bundle install
COPY . /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["sh", "./entrypoint.sh"]

# Start the main process.
#CMD ["rails", "server", "-b", "0.0.0.0"]
