FROM alpine:3.9
MAINTAINER Jean-Pierre LE DREF

EXPOSE 8118
      
RUN	apk add --update \
	runit \
	dnsmasq \
	tini \ 
	privoxy \
	tor && \  
	rm -rf /var/cache/apk/*

RUN chown root:root /var/lib/tor

COPY service /etc/service/

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
