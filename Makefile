IMAGE_NAME = lulichn/digdag
IMAGE_TAG = 0.9.14-dev
IMAGE = $(IMAGE_NAME):$(IMAGE_TAG)

build:
	docker build -t $(IMAGE) -f Dockerfile.dev .
	@echo Built $(IMAGE)

push:
	docker push $(IMAGE)

