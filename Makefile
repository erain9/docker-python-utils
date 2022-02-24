.PHONY: all help

APP=docker-python-utils
DOCKER_USER=0xpanda9

all: help

build: ## Build container
	docker build --rm -t "$(DOCKER_USER)/$(APP)" .

push: build ## Push container to docker hub
	docker push "$(DOCKER_USER)/$(APP)"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
