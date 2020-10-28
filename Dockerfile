FROM alpine:latest AS builder
RUN apk add --no-cache build-base
COPY arch.c /tmp
RUN gcc "-DARCH=\"`uname -m`\"" /tmp/arch.c -o /tmp/arch
 
FROM alpine:latest
COPY --from=builder /tmp/arch /usr/local/bin
ENTRYPOINT ["arch"]
