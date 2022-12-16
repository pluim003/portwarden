FROM alpine:latest AS builder

RUN mkdir /app
WORKDIR /app

ENV URL="https://vault.bitwarden.com/download/?app=cli&platform=linux"
RUN wget "$URL" -O /app/bw.zip 
RUN unzip -d /app bw.zip

### 

FROM alpine:latest

RUN adduser -DH app

COPY --from=builder /app/bw /usr/local/bin

RUN chmod 700 /usr/local/bin/bw
RUN chown app:users /usr/local/bin/bw

USER app

ENTRYPOINT [ "bw" ]
