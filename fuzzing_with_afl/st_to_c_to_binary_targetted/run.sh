export AFL_QEMU_PERSISTENT_ADDR=0x400001a12b
export AFL_QEMU_PERSISTENT_GPR=1
export AFL_NO_FORKSRV=1
afl-fuzz -i input -o output -Q -- ./openplc @@
