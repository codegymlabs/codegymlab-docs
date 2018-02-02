#!/usr/bin/env bash

mkdir -p out/pdf

docker run --rm \
  -v $PWD:/docs \
  -v $PWD/out:/docs/out \
  codegymlabs/pandoc:pdf -D latex > template.latex