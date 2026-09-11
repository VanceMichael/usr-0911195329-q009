FROM golang:1.25-alpine AS build
WORKDIR /src
COPY . .
RUN go test ./... && go build -o /service ./cmd/server
FROM alpine:3.22
COPY --from=build /service /service
EXPOSE 8080
ENTRYPOINT ["/service"]
