# Bootloader
This repository holds some bootloader exercises/experiments based on [0xAX](https://github.com/0xAX/linux-insides). It is written in GNU assembly (AT&T syntax).

## How to build
```
$ as boot.S -o boot.o
$ ld --oformat binary -T linker.ld boot.o -o boot 
```

## How to run
Using qemu:
```
$ qemu-system-i386 boot
```
