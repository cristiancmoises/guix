qemu-system-x86_64 -hda kali.qcow2 -boot d -enable-kvm -cpu host -m 12G -vga virtio -net nic,model=e1000 -net user -usbdevice tablet
