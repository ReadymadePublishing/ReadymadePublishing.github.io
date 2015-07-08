#!/bin/bash

pushd ./_site
cp -R ./ ../../ReadymadePublishing.github.io
popd
pushd ../ReadymadePublishing.github.io
git add --all
git commit -m "Updated issues"
git push
popd
