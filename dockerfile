FROM golang:latest AS build

WORKDIR /go/src
COPY  . .

RUN go build main.go

FROM scratch

WORKDIR /bin
COPY --from=build /go/src/main .

ENTRYPOINT [ "./main" ]

