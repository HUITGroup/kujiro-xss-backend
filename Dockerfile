FROM golang:1.18 AS builder
WORKDIR /build_dir
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go install
RUN CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -installsuffix netgo --ldflags '-extldflags "-static"' -o app .

FROM gcr.io/distroless/base-debian11 AS runner
WORKDIR /root/
COPY --from=builder /build_dir/app .
CMD ["./app"]