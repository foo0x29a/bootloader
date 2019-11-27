.code16
.globl boot

boot:
  mov $0x0e, %ah
  mov $0, %bx
  print:
    mov message(%bx), %al
    cmp $0, %al
    je done
    int $0x10
    inc %bx
    jmp print
  done:
    hlt

message:
  .ascii "Hello, World\0"

.fill 510-(.-boot), 1, 0
.byte 0x55
.byte 0xaa
