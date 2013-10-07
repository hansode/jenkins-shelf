#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

chroot $1 $SHELL -ex <<EOS
  /tmp/edit-grub4vz.sh add
  /tmp/edit-grub4vz.sh enable
EOS
