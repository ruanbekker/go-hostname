FROM golang:alpine AS builder
WORKDIR /go/src/hello
RUN apk add --no-cache gcc libc-dev
ADD app.go /go/src/hello/app.go
RUN GOOS=linux GOARCH=amd64 go build -tags=netgo app.go

FROM scratch
ARG version=0.2.1
LABEL maintainer="contact@ruanbekker.com" \
      version="$version" \
      description="Go web application that retuns hostname info."
COPY --from=builder /go/src/hello/app /app
CMD ["/app"]
