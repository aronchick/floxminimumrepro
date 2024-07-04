set shell := ["bash", "-c"]
set allow-duplicate-recipes
set positional-arguments
set dotenv-load
set export

all:
	yarn build:prod