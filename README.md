# docker-cloudflare-dyndns
[![Docker pull](https://img.shields.io/docker/pulls/nouchka/cloudflare-dyndns)](https://hub.docker.com/r/nouchka/cloudflare-dyndns/)
[![Docker stars](https://img.shields.io/docker/stars/nouchka/cloudflare-dyndns)](https://hub.docker.com/r/nouchka/cloudflare-dyndns/)
[![Build Status](https://gitlab.com/japromis/docker-cloudflare-dyndns/badges/master/pipeline.svg)](https://gitlab.com/japromis/docker-cloudflare-dyndns/pipelines)
[![Docker size](https://img.shields.io/docker/image-size/nouchka/cloudflare-dyndns/latest)](https://hub.docker.com/r/nouchka/cloudflare-dyndns/)



# Versions

Version follows cloudlfare api version

* 4.0 (latest) (based on 4.0 branch)

# Image
The image is based on the script https://gist.github.com/rasmusbe/fc2e270095f1a3b41348. The script use curl to update cloudflare record using api v.4

The entrypoint updates the parameters of the api based on docker env

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

# Todo

* Add testing key to test true api call on test
* Migrate docker-compose file format to version 2
* Use ddclient

# Donate

Bitcoin Address: 15NVMBpZJTvkefwfsMAFA3YhyiJ5D2zd3R
