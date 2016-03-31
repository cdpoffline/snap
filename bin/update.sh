#!/bin/bash

cd "`dirname \"$0\"`"

cd ../web

echo "- Snap"
if [ -d snap ]
then
  cd snap
  git pull
  cd ..
else
  mkdir snap
  git clone --depth 1 https://github.com/jmoenig/Snap--Build-Your-Own-Blocks.git snap
fi

rm -f snap.zip
zip -r snap.zip snap/*

echo "- Scratch to Snap converter"
if [ -d Snapin8r2 ]
then
  cd Snapin8r2
  git pull
  cd ..
else
  git clone --depth 1 --branch gh-pages https://github.com/djdolphin/Snapin8r2.git
fi


