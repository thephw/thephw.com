define USAGE
#############
## Targets ##
#############
boostrap - Setup the OS dependencies
deploy - Deploy to the web 🌎
server - Start the server
endef
export USAGE

.SHELL: /bin/bash

.PHONY: $(MAKECMDGOALS) # Everything below should always run (phony targets)

.DEFAULT_GOAL := help

help:
	@echo "$$USAGE"

bootstrap:
	./bin/bootstrap
deploy:
	./bin/deploy
server:
	./bin/server
