FROM golang:1.11.2-alpine

RUN apk update && apk upgrade
RUN apk add vim
RUN apk add build-base

RUN apk add --no-cache git
RUN go get -u github.com/jinzhu/gorm
RUN go get github.com/mattn/go-sqlite3
RUN go get -u github.com/smallnest/gen

WORKDIR $GOPATH/src/github.com/smallnest/gen

RUN go build .
CMD gen --connstr "postgres://admin:12345@140.96.0.34:50003/Test_db?sslmode=disable" --database Test_db  --json --gorm --guregu --rest
