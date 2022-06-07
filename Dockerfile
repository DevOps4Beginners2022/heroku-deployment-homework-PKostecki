FROM golang:1.17-alpine

ARG PORT=8080
ENV PORT=$PORT

WORKDIR /app

COPY . /app

RUN go mod download
RUN go build -o app-server

EXPOSE $PORT

CMD ["./app-server"]
