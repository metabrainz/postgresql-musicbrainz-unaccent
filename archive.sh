#!/bin/bash
# This script generates archive files for uploading to manager.pgxn.org.
#
# Usage:
# ./archive.sh          - generates archives for current git HEAD
# ./archive.sh 1.0.0    - generates archives for git tag 'v1.0.0'
#
# To package up a new version, you have to create an annotated git tag first:
#
#   git tag -a v1.0.0 -m 'Tag v1.0.0'

set -e

if [[ -z "$1" ]]; then
  TAG="$(git describe)"
  VER="${TAG#v}"
else
  VER="$1"
  TAG="v$VER"
fi

NAME="musicbrainz_unaccent-$VER"
echo "Creating `realpath ../$NAME.tar.gz`"
git archive "$TAG" --prefix "$NAME/" -o "../$NAME.tar.gz"
echo "Creating `realpath ../$NAME.zip`"
git archive "$TAG" --prefix "$NAME/" -o "../$NAME.zip"
