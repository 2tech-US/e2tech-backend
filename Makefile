SHELL := /bin/bash
up:
	source up.sh

down:
	source down.sh

start:
	source start.sh
update:
	git submodule update --remote
push:
	git submodule update --remote
	git add .
	git commit -m "backend submodules updated"
	git push
	
.PHONY: up down start update push
