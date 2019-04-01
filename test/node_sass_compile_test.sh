#!/bin/bash

# Test compilation with node-sass binary

mkdir -p tmp/node-sass
node_modules/.bin/node-sass assets/stylesheets/_bootstrap-3.scss -o tmp/node-sass/bootstrap-3.css && \
node_modules/.bin/node-sass --include-path=assets/stylesheets/ \
  assets/stylesheets/bootstrap-3/_theme.scss -o tmp/node-sass/bootstrap-3-theme.css || \
(echo "node-sass compilation failed" && exit 1)
