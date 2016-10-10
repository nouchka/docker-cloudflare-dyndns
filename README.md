# docker-cloudflare-dyndns

[![Docker Hub repository](http://dockeri.co/image/nouchka/cloudflare-dyndns)](https://registry.hub.docker.com/u/nouchka/cloudflare-dyndns/)

[![](https://images.microbadger.com/badges/version/nouchka/cloudflare-dyndns.svg)](https://microbadger.com/images/nouchka/cloudflare-dyndns "Get your own version badge on microbadger.com")


# Versions

Version follows cloudlfare api version

* 4.0

# Image
The image is based on the script https://gist.github.com/rasmusbe/fc2e270095f1a3b41348. The script use curl to update cloudflare record using api v.4

The entrypoint of the image checks the sha of the script and update the parameters of the api based on docker env

Use same environment variable names as https://github.com/msh100/Docker-Images/tree/master/cloudflare-dyndns

# Use

Use from command line:

	docker run -e 'CF_EMAIL=docker@katagena.com' \
		-e 'CF_HOST=wwww.katagena.com' \
		-e 'CF_API=c2547eb745079dac9320b638f5e225cf483cc5cfdda41' \
		nouchka/cloudflare-dyndns
or use with docker compose:

	docker-compose up -d
Environment variables:

	CF_EMAIL=docker@katagena.com
	CF_HOST=wwww.katagena.com
	CF_API=c2547eb745079dac9320b638f5e225cf483cc5cfdda41
