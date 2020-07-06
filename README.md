Goal
----
Bring up a stand alone environment from scratch with minimal dependencies
(QEMU mostly), able to test switch configuration (NXOSv as the initial goal),
provisioning of machines, etc.

Contents
--------
  - bootstrap_openbsd/
    For bootstrapping the initial VM, installs OpenBSD with QEMU and Expect

Gotchas
-------
Currently using qemu's socket,mcast networking, using address 239.76.79.76.
To avoid sending packets off your computer, something like this helps:

```
ip route add 239.76.79.76/32 dev lo
ip link set dev lo multicast on
```
