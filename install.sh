#!/usr/bin/env bash

MODULE_NAME=r8125

KVER=`uname -r`
MODDESTDIR=/lib/modules/$KVER/kernel/drivers/net/ethernet/realtek/

sudo install -p -m 644 $MODULE_NAME.ko $MODDESTDIR
sudo /sbin/depmod -a $KVER
sudo modprobe r8125
