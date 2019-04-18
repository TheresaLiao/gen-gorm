FROM golang:1.11.2-alpine

RUN apk update && apk upgrade
RUN apk add vim
RUN apk add build-base
RUN apk add --update make

RUN apk add --no-cache git
RUN go get -d -u github.com/wantedly/pq2gorm
WORKDIR $GOPATH/src/github.com/wantedly/pq2gorm

CMD make
CMD make install
