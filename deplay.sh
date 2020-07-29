#!/bin/sh

hugo --theme=even --baseUrl="https://springfieldking.github.io/" --buildDrafts

cd public
git add .
git commit -m 'update'
git push -f

cd ..
cd content
git add .
git commit -m 'update'
git push -f

cd ..
git add .
git commit -m 'update'
git push -f
