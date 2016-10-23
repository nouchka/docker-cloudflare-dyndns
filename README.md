# docker-cloudflare-dyndns

[![Docker Hub repository](http://dockeri.co/image/nouchka/cloudflare-dyndns)](https://registry.hub.docker.com/u/nouchka/cloudflare-dyndns/)

[![](https://images.microbadger.com/badges/image/nouchka/cloudflare-dyndns.svg)](https://microbadger.com/images/phpmyadmin/phpmyadmin "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/nouchka/cloudflare-dyndns.svg)](https://microbadger.com/images/nouchka/cloudflare-dyndns "Get your own version badge on microbadger.com")
[![Docker Automated buil](https://img.shields.io/docker/automated/nouchka/cloudflare-dyndns.svg)](https://hub.docker.com/r/nouchka/cloudflare-dyndns/)
[![Build Status](https://travis-ci.org/nouchka/docker-cloudflare-dyndns.svg?branch=master)](https://travis-ci.org/nouchka/docker-cloudflare-dyndns)
<!---
[![Docker Stars](https://img.shields.io/docker/stars/nouchka/docker-cloudflare-dyndns.svg)](https://hub.docker.com/r/nouchka/cloudflare-dyndns/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nouchka/docker-cloudflare-dyndns.svg)]()
--->

# Versions

Version follows cloudlfare api version

* 4.0 (latest) (based on master branch)

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

# Todo

* Add testing key to test true api call on test
* Migrate docker-compose file format to version 2

# Donate

Bitcoin Address: 15NVMBpZJTvkefwfsMAFA3YhyiJ5D2zd3R
