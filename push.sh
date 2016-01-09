#!/bin/bash
set -e

here="$(dirname ${BASH_SOURCE[0]})"
cd $here

git add .
git commit
git push
