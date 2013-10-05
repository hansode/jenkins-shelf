#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

run_in_target ${chroot_dir} "rpm -qa epel-release* | egrep -q epel-release || { rpm -Uvh http://dlc.wakame.axsh.jp.s3-website-us-east-1.amazonaws.com/epel-release; }"

[[ -z "$(echo ${add3rdpkg})" ]] || {
  run_in_target ${chroot_dir} yum install -y ${add3rdpkg}
}
