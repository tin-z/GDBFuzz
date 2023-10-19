1. For targetted fuzzing we find the memory address of a specific function 
```
nm binary_name | grep function_name
```
2. Find base address
```
AFL_QEMU_DEBUG_MAPS=1 afl-qemu-trace ./binary_name
```
3. and set the address adding the base address to the function address to fuzz in persistent mode. 
```
export AFL_QEMU_PERSISTENT_ADDR=function_address
```

![ss](https://github.com/csamin/fuzzing_with_afl/blob/main/c_raw/Screenshot%20from%202023-08-15%2018-24-58.png)
