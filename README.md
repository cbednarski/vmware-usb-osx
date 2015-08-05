# vmware-usb-osx

This project includes a simple makefile that helps you create a bootable USB
installer for VMware ESXi on OSX. This is based on a [similar script I made for
ubuntu](https://github.com/cbednarski/ubuntu-usb-osx).

## Background on VMware ESXi

VMware ESXi is a lightweight operating system designed to run virtual machines.
Whenever you hear about someone running virtual machines or cloud servers
they're using ESXi, Xen, QEMU/KVM, or a similar technology under the hood.

ESXi is proprietary software, but you can download it and use it for free. You
will need to register for a VMware account and [download ESXi (also called
"vSphere Hypervisor")](https://www.vmware.com/products/vsphere-hypervisor/)
before you use this script.

## Instructions

1.  Download the ESXi ISO can copy it into the same folder as this script. It
    will have a long name with a version number like
    `VMware-VMvisor-Installer-6.0.0-2494585.x86_64.iso`. Rename it to `esxi.iso`
    so the script can find it.

2.  Run `make devices`

3.  Insert your USB stick. You'll see a new device appear in step 3.

4.  Run `make devices`

5.  Note the disk number for your USB stick. It will be something like
    `/dev/disk2`. The only part you care about is **2** (or 3, or 4, or
    whatever) for step 6.

6.  `make vmware DISK=2` **Note:** This step will ask for your password for
    `sudo`.

7.  Pop the USB stick into the computer you want to vmware-ify and restart it.

Depending on how fast your USB stick is, step 6 make take awhile.
