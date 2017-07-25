FROM alpine
RUN apk add --no-cache netcat-openbsd
ENTRYPOINT [ "nc" ]

