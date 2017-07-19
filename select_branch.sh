#!/bin/bash -ex
# pull in (?) versions of branches to build
export WORKINGDIR=${HOME}/build
REPO=phoenixphpclient
cd ${WORKINGDIR}/${REPO}
git checkout ${PHPbranch}

#blah
