Jenkins-Shelf
=============

[Jenkins](http://jenkins-ci.org/http://jenkins-ci.org/) based build cluster building tools with [vmbuilder](https://github.com/hansode/vmbuilder) and [buildbook-rhel6](https://github.com/hansode/buildbook-rhel6).

Requirements
------------

+ RHEL/CentOS/Scientific
+ [KVM](http://www.linux-kvm.org/page/Main_Page)
+ [OpenVZ](http://openvz.org/Main_Page)

Getting Started
---------------

Setup submodules.

```
$ make setup
```

Build VM image for OpenVZ box.

```
$ cd roles/kvm.host-vz
$ make
```

Build targets
-------------

+ Cluster-host
+ Cluster-node

Links
-----

+ [buidbook-rhel6](https://github.com/hansode/buildbook-rhel6)
+ [vmbuider](https://github.com/hansode/vmbuilder)

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
