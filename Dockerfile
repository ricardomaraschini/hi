FROM golang
WORKDIR /go/src/hi
COPY main.go .
COPY go.mod .
RUN go build
RUN mv /go/src/hi/hi /
EXPOSE 8181
CMD ["/hi"]  
