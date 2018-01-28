#!/usr/bin/env bash

docker run --rm \
  -v $PWD:/docs \
  -v $PWD/outs:/docs/out \
  codegymlabs/pandoc:pdf \
  pivotaltracker-gitlab-sonarqube-slack.md \
  -o out/o.pdf \
  -V papersize:a4 \
  --latex-engine=xelatex \
  --dpi=144
