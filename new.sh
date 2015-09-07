#!/bin/bash

pushd ./_posts
LATEST=`ls -m1 | tail -n1`
NEXTTHU=`date +%F --date="next thu"`
NEWISSUE="$NEXTTHU-untitled.md"
cp $LATEST $NEWISSUE
popd
gvim ./_posts/$NEWISSUE
