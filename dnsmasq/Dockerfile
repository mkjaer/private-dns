FROM alpine:3.6

RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp

COPY extra_hosts /extra_hosts
COPY dnsmasq.conf /etc/dnsmasq.conf 
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
#ENTRYPOINT ["dnsmasq", "--keep-in-foreground", "--log-facility=-", "-q"]
