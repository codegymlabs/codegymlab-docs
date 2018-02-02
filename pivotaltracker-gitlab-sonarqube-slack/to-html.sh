#!/usr/bin/env bash

rm -rf out/html

mkdir -p out/html

docker run --rm \
  -v $PWD:/docs \
  -v $PWD/out:/docs/out \
  codegymlabs/pandoc:pdf-beta \
  -t html5 \
  --css pandoc.css \
  pivotaltracker-gitlab-sonarqube-slack.md \
  -o out/html/`date '+%Y%m%dT%H%M%S'`.html

cp -r images out/html/images