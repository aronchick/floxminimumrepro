#!/usr/bin/env bash

shell=$(command -v bash)
FLOX_DISABLE_METRICS=true SHELL=$shell flox activate -r aronchick/floxrepro -t -- just all
