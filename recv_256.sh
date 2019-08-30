sudo ./x86_64-softmmu/qemu-system-x86_64 \
-drive if=none,id=drive0,cache=none,format=raw,file=/home/tommychap/itri/Ubuntu20G-1604.img \
-device virtio-blk,drive=drive0 \
-m 256M -enable-kvm \
-net tap,ifname=tap1 -net nic,model=virtio,vlan=0,macaddr=ae:ae:00:00:00:25 \
-vga std -chardev socket,id=mon,path=/home/tommychap/itri/vm1r.monitor,server,nowait -mon chardev=mon,id=monitor,mode=readline \
-incoming tcp:0:4441,ft_mode
