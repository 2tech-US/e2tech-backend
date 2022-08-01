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
	git fetch
	git pull
	git submodule foreach --recursive git pull

push:
	git submodule foreach --recursive git pull
	git add .
	git commit -m "backend submodules updated"
	git push
	
.PHONY: up down start stop update push
