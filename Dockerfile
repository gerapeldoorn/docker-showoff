FROM wanix/showoff
RUN apk update && apk upgrade

# Install prereqs 
RUN apk add bash ruby-dev make gcc musl-dev zlib-dev g++ cmake git

# Clean APK cache
RUN rm -rf /var/cache/apk/*

# Install showoff
RUN gem update --no-ri --no-doc

WORKDIR /data

ENTRYPOINT ["showoff", "serve"]

