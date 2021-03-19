reset:
	rm -f vms/n9kfoo.qcow2
	qemu-img create -f qcow2 -b ../baseimages/nexus9300v.10.1.1.qcow2 -F qcow2 vms/n9kfoo.qcow2
