#!/bin/bash -ex
# master script
env

bash pull_repos.sh
bash select_branch.sh

if [[ $Release == "1" ]] ; then
  echo this is a release!
else
  echo this is not a release
fi
