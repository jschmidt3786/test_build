#!/bin/bash -ex
#WORKINGDIR=${HOME}/build

# hopefully won't need this in /every/ low-level script...
#eval `ssh-agent`
#ssh-add ~/.ssh/zenith_id_rsa
#ssh-add ~/.ssh/id_rsa
#echo

REPO=procentricupdatesbuilder
cd ${WORKINGDIR}/${REPO}
git checkout master

# need to modify: change internal logging to spit out to Jenkins
sh buildall.sh

