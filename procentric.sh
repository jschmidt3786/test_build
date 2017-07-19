#!/bin/bash -ex
#WORKINGDIR=${HOME}/build
REPO=procentricupdatesbuilder
cd ${WORKINGDIR}/${REPO}
git checkout master

mkdir -p ${WORKINGDIR}/Builds/

ant clean

ant
