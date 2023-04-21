FROM golang:1.17-alpine AS builder
RUN adduser -D -g '' app
RUN apk --update add ca-certificates
COPY src/ /src/
WORKDIR /src
RUN env CGO_ENABLED=0 go build -o s3ycdiruploader main.go