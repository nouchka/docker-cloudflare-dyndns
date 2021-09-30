DOCKER_IMAGE=cloudflare-dyndns

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm --entrypoint md5sum $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) /cloudflare-update-record.sh
