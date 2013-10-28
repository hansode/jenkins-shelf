VMS=kvm.host-vz kvm.host-vbox kvm.kemukins vz.kemukins kvm.centos6

all:

full: $(VMS)
gen-script:
	for i in $(VMS); do \
	 [[ -d $${i} ]] || continue;\
	 echo ... $${i};\
	 (cd $${i} && ../../vendor/vmbuilder/kvm/rhel/6/misc/kvm-ctl.sh render-runscript --config-path ./vmbuilder.conf > run.sh && chmod +x run.sh);\
	done

kvm.host-vz:
	(cd $@ && time ../../vendor/vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

kvm.host-vbox:
	(cd $@ && time ../../vendor/vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

kvm.kemukins:
	(cd $@ && time ../../vendor/vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

vz.kemukins:
	(cd $@ && time ../../vendor/vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)
	(cd $@/rootfs && sudo tar zcvpf ../$@.`arch`.tar.gz .)
	(cd $@ && sudo rm -rf rootfs)

kvm.centos6:
	(cd $@ && time ../../vendor/vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

.PHONY: $(VMS)
