#!/bin/bash -ex
#WORKINGDIR=${HOME}/build
eval `ssh-agent`
ssh-add ~/.ssh/zenith_id_rsa
ssh-add ~/.ssh/id_rsa
echo

REPO=procentricupdatesbuilder
cd ${WORKINGDIR}/${REPO}
git checkout master

sh buildall.sh

