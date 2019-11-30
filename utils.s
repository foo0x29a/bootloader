.equ TTY_OUT, 0x10
 
 print:
   push %bp 
   mov %sp, %bp 
   mov 4(%bp), %si 
   mov $0x0e, %ah 
   _print:
     lodsb
     cmp $0, %al 
     je _done
     int $TTY_OUT
     jmp _print
   _done:
     mov %bp, %sp 
     pop %bp 
     ret
