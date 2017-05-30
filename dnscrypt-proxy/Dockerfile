FROM alpine:3.6

RUN apk add --no-cache dnscrypt-proxy

EXPOSE 5353/tcp 5353/udp

ENTRYPOINT ["dnscrypt-proxy", "--local-address=0.0.0.0:5353"]
CMD ["--resolver-name=d0wn-de-ns1"]

