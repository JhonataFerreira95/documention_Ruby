FROM ruby:3.4.8

WORKDIR /paht/documentation_ruby

COPY Gemfile Gemgile.lock ./

RUN bundle install

COPY . .

EXPOSE 8080

CMD ["ruby", "main.rb"]

