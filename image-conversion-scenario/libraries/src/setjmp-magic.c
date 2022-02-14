/* A magic setjmp.h replacement that allows compilation on .wasm ; it
   basically throws errors whenever something can't be done.

   Author: Jay Bosamiya */

#include <stdio.h>
#include <stdlib.h>

typedef struct jmp_buf {} jmp_buf[1];
int setjmp (jmp_buf j) {
  return 0;
}
_Noreturn void longjmp (jmp_buf j, int v) {
  printf("longjmp not supported: %d\n", v);
  __builtin_trap();
}
