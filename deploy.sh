#!/bin/bash

# reference: 	https://gist.github.com/domenic/ec8b0fc8ab45f39403dd

set -e # exit with nonzero exit code if anything fails

# go to the distributions directory and create a *new* Git repo
cd build/libs
git init

# inside this git repo we'll pretend to be a new user
git config user.name "travis-ci"
git config user.email "auto-deploy@travis-ci.com"

# The first and only commit to this new Git repo contains all the
# files present with the commit message.
rm *.jar.original
git add .
git commit -m "Deploy Travis CI build #${TRAVIS_BUILD_NUMBER} artifacts to GitHub"

# Force push from the current repo's master branch to the remote
# repo's master branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.

# Example values:
# export GH_TOKEN=721fd28bc24dedf553c9ecb6e6c2f137fffb8b5f
# travis encrypt GH_TOKEN=721fd28bc24dedf553c9ecb6e6c2f137fffb8b5f --add
# export GH_REF=github.com/garystafford/microservice-docker-demo-artifacts.git
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:build-artifacts > /dev/null 2>&1
