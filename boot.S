.code16
 .globl _start, start

 start:
 _start:
   push $real_mode_message
   call print
   addw $2, %sp

   hlt

 print:
   push %bp
   mov %sp, %bp
   mov 4(%bp), %si
   mov $0x0e, %ah
   _print:
     lodsb
     cmp $0, %al
     je _done
     int $0x10
     jmp _print
   _done:
     mov %bp, %sp
     pop %bp
     ret

 real_mode_message:
   .asciz "Entering 16 bits Real Mode"

 .fill 510-(.-start), 1, 0
 .byte 0x55
 .byte 0xaa
