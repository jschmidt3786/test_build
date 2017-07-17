#!/bin/bash -ex
# some assumptions here:
#  - 'zenith' ssh keypair is located in your ~/.ssh/ dir as
#  - zenith_id_rsa / zenith_id_rsa.pub
#  - with proper permissions ( 600 / 644 )

eval `ssh-agent`
ssh-add ~/.ssh/zenith_id_rsa
echo

# set to whatever, but ya gotta clone the repos below into place...
WORKINGDIR=${HOME}/build
[ ! -d ${WORKINGDIR} ] && mkdir -p ${WORKINGDIR} && echo working directory not found. it has been created, but you still have some work to do...
pushd ${WORKINGDIR} 1> /dev/null

# sync repositories
#REPOLIST="pcdapp linux phoenixphpclient gbgem gem gemadminclient jdce networkfeeds procentricbootstrapscripts procentriclicensebuilder procentriclicenseutils procentrictlxutils procentricupdatesbuilder triveniepg pcn"
# drop pcdapp, linux, & pcn for now
REPOLIST="phoenixphpclient gbgem gem gemadminclient jdce networkfeeds procentricbootstrapscripts procentriclicensebuilder procentriclicenseutils procentrictlxutils procentricupdatesbuilder triveniepg"
for repo in ${REPOLIST} ; do
  if [[ -d ${repo} ]] ;then
    echo fetching changes in ${repo} repository
    pushd ${repo} 1> /dev/null
    git fetch
    #echo do build stuff in ${repo}
    popd 1> /dev/null
  else
    echo "the ${repo} repository is missing from our working directory"
    echo "possible fixes include:
    cd ${WORKINGDIR}
    git clone git@136.166.60.113:7999/pcp/pcdapp.git
    git clone git@136.166.60.113:7999/pcp/linux.git
    git clone git@bitbucket.org:procentric/phoenixphpclient.git
    git clone git@bitbucket.org:procentric/gbgem.git
    git clone git@bitbucket.org:procentric/gem.git
    git clone git@bitbucket.org:procentric/gemadminclient.git
    git clone git@bitbucket.org:procentric/jdce.git
    git clone git@bitbucket.org:procentric/networkfeeds.git
    git clone git@bitbucket.org:procentric/procentricbootstrapscripts.git
    git clone git@bitbucket.org:procentric/procentriclicensebuilder.git
    git clone git@bitbucket.org:procentric/procentriclicenseutils.git
    git clone git@bitbucket.org:procentric/procentrictlxutils.git
    git clone git@bitbucket.org:procentric/procentricupdatesbuilder.git
    git clone git@bitbucket.org:procentric/triveniepg.git
    git clone git@mod.lge.com:2222/pcn/pcn.git
    "
    #exit 1
  fi
done

#env |grep -i agent
kill ${SSH_AGENT_PID}

