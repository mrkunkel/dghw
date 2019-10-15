FROM golang:1.13.1-alpine AS build
WORKDIR /src/
COPY hello.go /src/
RUN CGO_ENABLED=0 go build -o /bin/hello

MAINTAINER  Matt Kunkel matt@mrkunkel.com

FROM scratch
COPY --from=build /bin/hello /bin/hello
ENTRYPOINT ["/bin/hello"]
