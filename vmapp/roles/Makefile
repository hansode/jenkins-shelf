VMS=kvm.host-vz kvm.kemukins vz.kemukins

all:

full: $(VMS)
gen-script:
	for i in $(VMS); do \
	 [[ -d $${i} ]] || continue;\
	 echo ... $${i};\
	 (cd $${i} && ../../vmbuilder/kvm/rhel/6/misc/kvm-ctl.sh render-runscript --config-path ./vmbuilder.conf > run.sh && chmod +x run.sh);\
	done

kvm.host-vz:
	(cd $@ && time ../../vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

kvm.kemukins:
	(cd $@ && time ../../vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)

vz.kemukins:
	(cd $@ && time ../../vmbuilder/kvm/rhel/6/vmbuilder.sh --config-path ./vmbuilder.conf)
	(cd $@/rootfs && sudo tar zcvpf ../$@.`arch`.tar.gz .)
	(cd $@ && sudo rm -rf rootfs)

.PHONY: $(VMS)
