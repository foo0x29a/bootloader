.code16
.globl _start, start

start:
  _start:
    push $real_mode_message
    call print
    addw $2, %sp

    hlt

.include "utils.s"

real_mode_message:
  .asciz "Entering 16 bits Real Mode..."

.fill 510-(.-start), 1, 0
.byte 0x55
.byte 0xaa
