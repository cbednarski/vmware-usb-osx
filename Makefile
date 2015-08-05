devices:
	diskutil list

esxi.dmg:
	if [ ! -f esxi.img.dmg ]; then hdiutil convert -format UDRW -o esxi.img esxi.iso; fi

vmware: esxi.dmg
	diskutil unmountDisk /dev/disk$(DISK)
	sudo dd if=esxi.img.dmg of=/dev/rdisk$(DISK) bs=1m
	diskutil eject /dev/disk$(DISK)
