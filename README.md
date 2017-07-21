# test_build

[![build status](https://gitlab.lge.net/jeff.schmidt/test_build/badges/feature/triggered_builds/build.svg)](https://gitlab.lge.net/jeff.schmidt/test_build/commits/feature/triggered_builds)

[![coverage report](https://gitlab.lge.net/jeff.schmidt/test_build/badges/master/coverage.svg)](https://gitlab.lge.net/jeff.schmidt/test_build/commits/master)

first step, pull down all of the disparate repos.
 - pull_repos.sh fetches changes in all repos (not quite all, will still leverage build scripts in some repos) :heavy_check_mark:
 - select_branch.sh - checkout branches to build for the components needed :heavy_check_mark:
 - procentric.sh - run the 'buildall.sh' script to build the various java components
 - phoenixphpclient.sh - 

## TODO

1. work out where/how to pull and update the various versions/branches :heavy_check_mark:
1. build some stuff
1. package some stuff
1. deploy/release some stuff
1. wrapper script(s) to tie it all together for Jenkins build job
