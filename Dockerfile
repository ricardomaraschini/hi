FROM golang
WORKDIR /go/src/hi
COPY main.go .
COPY go.mod .
RUN go build -o /tmp/hi

FROM fedora:latest
COPY --from=0 /tmp/hi /
EXPOSE 8080
CMD ["/hi"]  

