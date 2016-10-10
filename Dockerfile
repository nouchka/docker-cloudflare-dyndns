FROM debian:wheezy
MAINTAINER Jean-Avit Promis "docker@katagena.com"
LABEL org.label-schema.vcs-url="https://github.com/nouchka/docker-cloudflare-dyndns"
LABEL version="4.0"

ENV DEBIAN_FRONTEND noninteractive
ENV CLOUDFLARE_FILE_SHA fdf6ff03cd9f75159be6b2e2649329a54bab680f
ENV CF_EMAIL docker@katagena.com
ENV CF_HOST wwww.katagena.com
ENV CF_API ggt

RUN apt-get update --fix-missing && \
	apt-get update && \
	apt-get install -y -q curl

RUN curl -o /cloudflare-update-record.sh https://gist.githubusercontent.com/rasmusbe/fc2e270095f1a3b41348/raw/d129df5f8c8119e55a199c7c1e8285efb3fded91/cloudflare-update-record.sh  && \
	chmod +x /cloudflare-update-record.sh

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
