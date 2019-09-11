FROM golang
WORKDIR /go/src/hi
COPY main.go .
COPY go.mod .
RUN go build -o /tmp/hi

FROM alpine
COPY --from=0 /tmp/hi /
EXPOSE 8181
CMD ["/hi"]  

