DC_RUN=docker-compose run --rm maker
NEW_TAG=$(shell date +%Y.%m.%d)
default: build

install:
	npm install

build:
	./scripts/build.sh

upgrade:
	npm upgrade pokemon-showdown
	make build

tag:
	./scripts/tag.sh

publish:
	git push --tags
	npm publish

dockerized-upgrade:
	$(DC_RUN) make upgrade

.SILENT:
.PHONY: build
