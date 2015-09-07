#!/bin/bash

# add everything to the git repo
git add --all
git commit -m "Finalised latest issue"

# copy everything from the _Site subdir to the gh repo dir
pushd ./_site
cp -R ./ ../../ReadymadePublishing.github.io
popd

# push everything live on github pages
pushd ../ReadymadePublishing.github.io
git add --all
git commit -m "Updated issues"
git push
popd
