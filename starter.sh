#!/bin/bash

git init
touch .gitignore
echo "node_modules" > .gitignore
npm init -y
git add -A
git commit -m "Initial commit"
