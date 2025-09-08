FROM golang:1.22 AS build
WORKDIR /src
COPY . .
RUN CGO_ENABLED=0 go build -o lucky -tags "adminweb nomsgpack" -ldflags="-s -w" ./

FROM scratch
COPY --from=build /src/lucky /lucky
EXPOSE 16601
WORKDIR /goodluck
ENTRYPOINT ["/lucky"]
CMD ["-c", "/goodluck/lucky.conf"]

