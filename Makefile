IMAGE_NAME="keras-retinanet"

build:
	docker build -t $(IMAGE_NAME) .
.PHONY: build

shell:
	docker run --rm -it $(IMAGE_NAME) bash
.PHONY: shell
