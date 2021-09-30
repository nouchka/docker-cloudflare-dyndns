FROM debian:stable-slim
MAINTAINER Jean-Avit Promis "docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-cloudflare-dyndns"
LABEL version="4.0"

ENV DEBIAN_FRONTEND=noninteractive \
	CF_EMAIL=docker@katagena.com \
	CF_HOST=wwww.katagena.com \
	CF_API=ggt

ARG CLOUDFLARE_FILE_MD5SUM=1781d3bd0cc1fe866f5d88079d91dc3dd91a4f61

RUN apt-get update --fix-missing && \
	apt-get update && \
	apt-get install -y -q curl

RUN curl -o /cloudflare-update-record.sh https://gist.githubusercontent.com/benkulbertis/fff10759c2391b6618dd/raw/0e365a91a15e15494b312cb5492e40dec2072414/cloudflare-update-record.sh && \
	sha1sum /cloudflare-update-record.sh && \
	echo "${CLOUDFLARE_FILE_MD5SUM}  /cloudflare-update-record.sh"| sha1sum -c - && \
	chmod +x /cloudflare-update-record.sh

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
