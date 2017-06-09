FROM ruby:2.4-alpine
RUN apk update && apk upgrade

# Install prereqs 
RUN apk add bash ruby-dev make gcc musl-dev zlib-dev g++ cmake git

# Clean APK cache
RUN rm -rf /var/cache/apk/*

# Install showoff
RUN gem install showoff --no-ri --no-doc

WORKDIR /data

ENTRYPOINT ["showoff", "serve"]

