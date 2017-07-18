#!/bin/bash -ex
# pull in (?) versions of branches to build
WORKINGDIR=${HOME}/build
REPO=phoenixphpclient

echo checking out branch ${PHPbranch} in ${REPO}
cd ${WORKINGDIR}/${REPO}
git checkout -b ${PHPbranch}
