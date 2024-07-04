set shell := ["bash", "-c"]
set allow-duplicate-recipes
set positional-arguments
set dotenv-load
set export

all:
	#!/usr/bin/env bash
	unset LD_LIBRARY_PATH

	# Install corepack
	corepack enable
	corepack prepare yarn@stable
	yarn set version berry
	yarn config set nodeLinker node-modules
	yarn install
	yarn build:prod