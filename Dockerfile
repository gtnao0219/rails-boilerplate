FROM ruby:2.5.3

RUN set -e \
  && apt-get update -y -qq \
  && apt-get install -y -qq build-essential net-tools mysql-client zlib1g-dev liblzma-dev libgmp-dev \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs \
  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && echo "Asia/Tokyo" > /etc/timezone \
  && npm install -g yarn \
  && gem install bundler --pre \
  && mkdir app

WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install -j8

# COPY . .
# RUN ./bin/rails assets:precompile
# RUN NODE_ENV=production ./bin/webpack