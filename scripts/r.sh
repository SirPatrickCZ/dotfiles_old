#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root or via sudo"
	exit 1
else
	echo "Changing kernel module for network to r8168-lts"
	modprobe -r r8169
	modprobe -r r8168
	modprobe r8168
	lspci -v
fi
