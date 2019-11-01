FROM golang:alpine AS build-env
RUN apk --no-cache add build-base git bzr mercurial gcc
ADD . /go/src/UPS
RUN cd /go/src/UPS && go build -o goapp

# Release main thrusters
FROM alpine
WORKDIR /app
COPY --from=build-env /go/src/UPS/goapp /app/
ENTRYPOINT ./goapp
