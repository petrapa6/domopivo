#!/bin/bash

# get the path to this script
MY_PATH=`dirname "$0"`
MY_PATH=`( cd "$MY_PATH" && pwd )`

cd $MY_PATH

git config --bool branch.master.sync true
git config --bool branch.master.syncNewFiles true

~/git/linux-setup/submodules/git-sync/git-sync > /dev/null 2>&1
RV=$?

if [ ! "$RV" -eq 0 ]; then 
  echo "homebrewing"
  exit 33
else
  echo ""
fi
