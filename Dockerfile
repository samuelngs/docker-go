FROM alpine:latest
MAINTAINER infinitely <sam@infinitely.io>

# Set GoPATH
ENV GOPATH /usr/local/go
ENV PATH $PATH:$GOPATH/bin

# Set work directory
WORKDIR $GOPATH

# Install Latest Go
RUN apk --update add go git &&\
# Cleanup
    rm -rf /var/cache/apk/* \
           /tmp/*

CMD ["version"]

ENTRYPOINT ["/usr/bin/go"]

