MAIN_PACKAGE_PATH := ./cmd/metamodule-site
BINARY_NAME := metamodule-site

# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: confirm
confirm:
	@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]

.PHONY: no-dirty
no-dirty:
	git diff --exit-code

## build: build the application
.PHONY: build
build:
# Include additional build steps, like TypeScript, SCSS or Tailwind compilation here...
	mkdocs build 

## run: run the  application
.PHONY: run
run: build
	mkdocs serve

.PHONY: serve
serve: run

## production/deploy: deploy the application to production
#production/deploy: confirm tidy audit no-dirty

.PHONY: production/deploy
production/deploy: confirm 
	mkdocs build
	tar -czvf /tmp/metamodule-docs.tar.gz -C ./metamodule-docs docs
	rsync -avP -e ssh /tmp/metamodule-docs.tar.gz metamodule:/tmp
	ssh -t metamodule "/srv/deploy-docs.sh"

.PHONY: production/perm
production/perm: confirm 
	ssh -t metamodule "sudo chmod -R g+w metamodule-docs/ && sudo chgrp -R metamodule-site metamodule-docs/docs/"
	
