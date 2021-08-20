#!/usr/bin/env bash

if [[ ! -d "node_modules/pokemon-showdown" ]]; then
  npm install
fi

rm -rf ./dist
mkdir -p ./dist

node index.js

cp -R ./node_modules/pokemon-showdown/.data-dist dist
mv dist/.data-dist dist/data
