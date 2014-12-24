#!/bin/bash

# Problem:  When Running Windows BootCamp on MAC, permission has been reset everytime when the Mac OS X Yosemite is reboot.
# Purpose:  This quick Patch will fix all the permission issues and be able to run with no permission problems

#  To re-create Windows BootCamp Image File
#  1)  Open Terminal

#!/bin/bash
$ ls -al
$ cd "VirtualBox VMs"
$ rm -rf Win7onMBP
$ mkdir Win7onMBP
$ cd Win7onMBP
$ sudo chmod 777 /dev/disk0s4
$ sudo VBoxManage internalcommands createrawvmdk -rawdisk /dev/disk0 -filename win7raw.vmdk -partitions 4
$ ls -al
$ sudo chmod 777 win7raw-pt.vmdk
$ sudo chmod 777 win7raw.vmdk

# 2)  Open VirtualBox, then click "New" to create the new Windows again if it doesn't work. 