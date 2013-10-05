#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

cause_daemons_starting ${chroot_dir} ntpd ntpdate
