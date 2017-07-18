#!/bin/bash -ex
REPO=procentricupdatesbuilder
cd ${WORKINGDIR}/${REPO}
git checkout master

./buildall.sh

