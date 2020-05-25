#!/bin/bash

pytest -x --cov-report term-missing --cov=sparklink_data_normalisation tests/

if [ $? -ne 0 ]
then
  exit 1
fi

export GIT_BRANCH=$(echo $GITHUB_REF | sed "s/refs\/heads\///")
coveralls
exit 0