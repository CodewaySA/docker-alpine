FROM alpine:3.12.0

LABEL org.alpine.version="3.12.0"
LABEL image_name="codewaysa/alpine"
LABEL maintainer="l.lesinigo@codeway.ch"

# prepare an updated Alpine Linux with included CA certificates
# hadolint ignore=DL3017,DL3018,DL3019
RUN apk update && apk upgrade && apk add ca-certificates && rm -rf /var/cache/apk/*

