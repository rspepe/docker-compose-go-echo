FROM golang:1.13

LABEL  maintainer "rspepe <rspepeg@gmail.com>"

RUN GO111MODULE=off go get github.com/codegangsta/gin

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /src
COPY src .

CMD ["/entrypoint.sh"]
