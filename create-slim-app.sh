#!/usr/bin/env bash
#
# Author: Pavel Koryakin
# Date Created: 2023-09-17
# Last Modified: 2023-09-19
#
# Description: Create Slim 4 template
#
# Usage: create-slim-app.sh

set -euo pipefail

read -p "Enter the project name: " project

directory="$HOME/Documents/MAMPProjects/$project"

[[  -d "$directory" ]] && { echo "The directory $directory already exists." ; exit 1 ; }

git clone git@github.com:unclekoin/slim-4-template.git "$directory"

cd "$directory"
rm -rf .git
touch .env
git init
git add .
git commit -m "init: start project"

composer update

echo "The project has been created."

pstorm "$directory"
