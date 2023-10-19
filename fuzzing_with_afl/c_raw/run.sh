afl-gcc -fsanitize=address -fsanitize=undefined imgVul.c -o imgVul
afl-fuzz -i input/ -o output/ -- ./imgVul @@
