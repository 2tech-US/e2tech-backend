SHELL := /bin/bash
GORUSH_ENABLE?=false
up:
	cd bin && source ./up.sh

down:
	cd bin && source ./down.sh

start:
	cd bin && source ./start.sh

stop:
	cd bin && source ./stop.sh

update:
	git fetch
	git pull
	git submodule update --remote --merge

push:
	git add .
	git commit -m "backend submodules updated"
	git push
	
.PHONY: up down start stop update push
