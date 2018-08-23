#!/usr/bin/env bash
set -e

git branch -D gh-pages || true
git checkout -b gh-pages

$PUB run build_runner build --release --output build

git add -A build
git commit -m "Build example"
git push origin +gh-pages

git checkout master

echo "All done."
