FROM ruby:3.3

ENV BUNDLE_VERSION 2.5
ENV BUNDLE_PATH /usr/local/bundle/gems
ENV TMP_PATH /tmp/
ENV APP_PATH /usr/src/app

RUN gem install bundler --version "$BUNDLE_VERSION"\
    && rm -rf $GEM_HOME/cache/*

# throw errors if Gemfile has been modified since Gemfile.lock
#RUN bundle config --global frozen 1

WORKDIR $APP_PATH

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rspec"]