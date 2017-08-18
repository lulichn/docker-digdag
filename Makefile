DEV =
IMAGE_NAME = lulichn/digdag
VERSION = 0.9.15
IMAGE = $(IMAGE_NAME):$(IMAGE_TAG)

ifdef DEV
	DOCKER_FILE = Dockerfile.dev
	IMAGE_TAG = ${DEV}-docker-dev
else
	DOCKER_FILE = Dockerfile.docker
	IMAGE_TAG = ${VERSION}-docker
endif

build:
	docker build -t $(IMAGE) -f $(DOCKER_FILE) .
	@echo Built $(IMAGE)

push:
	docker push $(IMAGE)

