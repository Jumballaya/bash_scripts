#!/bin/bash
REPO=$(git ls-remote --get-url | sed 's/.*://' | sed 's/\.[^\.]*$//')
BRANCH=$(git rev-parse --abbrev-ref HEAD)
xdg-open http://www.github.com/${REPO}/tree/${BRANCH}
