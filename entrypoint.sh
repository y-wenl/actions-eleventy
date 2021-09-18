#!/bin/sh

cd "$INPUT_WORKING_DIRECTORY"

if [ "$INPUT_INSTALL_DEPENDENCIES" = "true" ]; then
  echo "Running \`npm install\`"
  npm install
fi

echo "Running eleventy"
eleventy $INPUT_ARGS
