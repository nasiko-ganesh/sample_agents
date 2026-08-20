FROM rust:1-alpine AS builder
RUN apk add --no-cache musl-dev build-base cmake perl
WORKDIR /app
COPY . .
RUN cargo build --release

FROM alpine:latest AS certs
RUN apk --no-cache add ca-certificates


