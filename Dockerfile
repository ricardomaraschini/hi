FROM golang
WORKDIR /go/src/hi
COPY main.go .
COPY go.mod .
RUN go build

FROM fedora:latest
COPY --from=0 /go/src/hi/hi .
CMD ["/hi"]  
