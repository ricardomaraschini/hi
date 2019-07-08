FROM golang
WORKDIR /go/src/hi
COPY main.go .
COPY go.mod .
RUN go build

FROM ubi7-minimal
COPY --from=0 /go/src/hi/hi /
CMD ["/hi"]  
