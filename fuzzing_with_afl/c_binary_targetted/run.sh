nm imgVul | grep ProcessImage
AFL_QEMU_DEBUG_MAPS=1 afl-qemu-trace ./imgVul
export AFL_QEMU_PERSISTENT_ADDR=0x400000129c
export AFL_QEMU_PERSISTENT_GPR=1
afl-fuzz -i input -o output -Q -- ./imgVul @@
