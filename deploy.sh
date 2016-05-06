#!/bin/bash

cd build
git init

git config user.name "${git_user}"
git config user.email "tstraub@cardinalsolutions.com"

git add .
git commit -m "Deploy"

# We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
git push --force "https://${git_user}:${git_password}@${git_target}" master:master > /dev/null 2>&1