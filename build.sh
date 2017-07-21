#!/bin/bash -ex
# master script
# global vars:
export WORKINGDIR=${HOME}/build

# not sure if this will export properly, just testing it here
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa
# legacy now, but let's load it up...
ssh-add ~/.ssh/zenith_id_rsa
echo


bash pull_repos.sh
bash select_branch.sh

# maybe this should be offloaded to a new Jenkins job
bash procentric.sh

if [[ $Release == "true" ]] ; then
  echo this is a release!
  # do something else that will trigger the release process
else
  echo this is not a release
fi

### cleanup
#env |grep -i agent
kill ${SSH_AGENT_PID}
