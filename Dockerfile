FROM alpine:edge as BUILD
RUN apk add --no-cache netcat-openbsd
ENTRYPOINT [ "nc" ]
