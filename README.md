# Reproduction of an Error on Flox 1.1 + Node

1. Run `flox activate -r aronchick/floxrepro`
2. Run `just all`

-- Observe - it runs fine on your laptop

1. Run `docker build -t floxrepro .`
2. Run `docker run -t -i --rm --init --volume .:/workdir --workdir /workdir floxrepro /bin/sh -e -c ./build_webui.sh`

-- Observe - fails to build