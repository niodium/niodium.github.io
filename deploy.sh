#!/bin/bash

# остановить публикацию при ошибках
set -e

# сборка
npm run build

cd dist

# Деплой в gh-pages
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:niodium/niodium.github.io.git master:gh-pages

cd -