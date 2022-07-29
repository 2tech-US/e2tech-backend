SHELL := /bin/bash
up:
	source up.sh

down:
	source down.sh

start:
	source start.sh

.PHONY: auth_svc