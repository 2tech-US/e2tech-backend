SHELL := /bin/bash
up:
	cd bin && source ./up.sh

down:
	cd bin && source down.sh

start:
	cd bin && source start.sh

stop:
	cd bin && source stop.sh

update:
	git submodule update --remote

push:
	git submodule update --remote
	git add .
	git commit -m "backend submodules updated"
	git push
	
.PHONY: up down start stop update push
