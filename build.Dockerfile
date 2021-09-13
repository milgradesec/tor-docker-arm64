FROM alpine:3.14.2

RUN apk update && \
    apk add --no-cache tor \
    ca-certificates

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
