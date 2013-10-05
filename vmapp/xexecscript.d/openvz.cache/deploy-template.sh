#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

chroot $1 $SHELL -ex <<'EOS'
  cd /vz/template/cache/
  curl -fSkL -O http://download.openvz.org/template/precreated/centos-6-x86_64.tar.gz
EOS
