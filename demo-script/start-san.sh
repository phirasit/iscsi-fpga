#!/bin/bash
set -e

disk=/root/diskimage
if [ $(losetup -a | grep -c $disk) -eq 0 ]; then
  loop=$(losetup -f)
  echo $loop
  losetup $loop $disk
fi

systemctl restart iscsi
systemctl restart tgt 

iscsiadm -m node --login -p 127.0.0.1:3260

lsblk
