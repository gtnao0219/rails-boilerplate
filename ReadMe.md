# rails new
create Gemfile
```
# frozen_string_literal: true
source "https://rubygems.org"
gem "rails", "~> 5.2.2"
```
create Gemfile.lock (empty)

comment out Dockerfile
```
# COPY . .
# RUN ./bin/rails assets:precompile
```

build container
```
docker build -t rails_boilerplate .
```

rails new
```
docker run --rm -it -v "$PWD":/app rails_boilerplate rails new . -d mysql --skip-turbolinks --skip-test
```

not overwrite ReadMe.md  
overwrite Gemfile

# Docker
```
docker build -t my_app_image .
```
```
docker-compose up -d
```
