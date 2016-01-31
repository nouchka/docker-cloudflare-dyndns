FROM debian:wheezy
MAINTAINER Jean-Avit Promis "docker@katagena.com"

ENV DEBIAN_FRONTEND noninteractive
ENV CLOUDFLARE_FILE_SHA fdf6ff03cd9f75159be6b2e2649329a54bab680f
##ENV CLOUDFLARE_FILE_SHA 1781d3bd0cc1fe866f5d88079d91dc3dd91a4f61
ENV CF_EMAIL docker@katagena.com
ENV CF_HOST wwww.katagena.com
ENV CF_API ggt

RUN apt-get update --fix-missing && \
	apt-get update && \
	apt-get install -y -q curl

RUN curl -o /cloudflare-update-record.sh https://gist.githubusercontent.com/rasmusbe/fc2e270095f1a3b41348/raw/d129df5f8c8119e55a199c7c1e8285efb3fded91/cloudflare-update-record.sh
##RUN curl -o /cloudflare-update-record.sh https://gist.githubusercontent.com/benkulbertis/fff10759c2391b6618dd/raw/0e365a91a15e15494b312cb5492e40dec2072414/cloudflare-update-record.sh
RUN chmod +x /cloudflare-update-record.sh

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
