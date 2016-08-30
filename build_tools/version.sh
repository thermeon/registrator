#!/bin/bash

VERSION=$(git describe --exact-match --tags HEAD)

if [ "$VERSION" == "" ]; then
    SHA=$(git rev-parse HEAD)
    if [[ $CIRCLE_BRANCH =~ 'hotfix/' ]]; then
        VERSION=${CIRCLE_BRANCH#hotfix/}-rc-$SHA
    elif [[ $CIRCLE_BRANCH =~ 'release/' ]]; then
        VERSION=${CIRCLE_BRANCH#release/}-rc-$SHA
    fi
fi
 
export VERSION=${VERSION#release_}

echo -n $VERSION > Version
