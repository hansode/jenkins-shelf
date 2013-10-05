#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

chroot $1 $SHELL -ex <<'EOS'
  [[ -d /var/lib/jenkins/plugins ]] || mkdir -p /var/lib/jenkins/plugins
  # install git plugin
  base_url=http://updates.jenkins-ci.org/latest
  while read plugin; do
    curl -fSkL ${base_url}/${plugin} -o /var/lib/jenkins/plugins/${plugin}
  done < <(cat <<-_EOS_
	build-pipeline-plugin.hpi
	categorized-view.hpi
	config-autorefresh-plugin.hpi
	configurationslicing.hpi
	config-file-provider.hpi
	dashboard-view.hpi
	depgraph-view.hpi
	downstream-buildview.hpi
	embeddable-build-status.hpi
	git.hpi
	git-client.hpi
	github-api.hpi
	github-oauth.hpi
	global-variable-string-parameter.hpi
	hipchat.hpi
	greenballs.hpi
	jobgenerator.hpi
	join.hpi
	managed-scripts.hpi
	nested-view.hpi
	parameterized-trigger.hpi
	rbenv.hpi
	rebuild.hpi
	simple-theme-plugin.hpi
	sounds.hpi
	timestamper.hpi
	token-macro.hpi
	urltrigger.hpi
	_EOS_
	)

  chown -R jenkins:jenkins /var/lib/jenkins/plugins
EOS
