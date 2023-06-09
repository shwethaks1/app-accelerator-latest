#!/bin/bash
set -euo pipefail

[[ $1 =~ (.*)-.* ]]

pushd ${GITHUB_WORKSPACE}/.github/tests/$1

[ -f assertions.sh ] && ./assertions.sh /tmp/result

popd
