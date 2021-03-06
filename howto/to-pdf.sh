#!/usr/bin/env bash

mkdir -p out/pdf

docker run --rm \
  -v $PWD:/docs \
  -v $PWD/out:/docs/out \
  codegymlabs/pandoc:pdf \
  howto.md \
  -o out/pdf/`date '+%Y%m%dT%H%M%S'`.pdf \
  -V papersize:a4 \
  --latex-engine=xelatex \
  --dpi=144 \
  --toc \
  -fmarkdown-implicit_figures
