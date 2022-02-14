/* A magic setjmp.h replacement that allows compilation on .wasm ; it
   basically throws errors whenever something can't be done.

   Author: Jay Bosamiya */

#ifndef SETJMP_MAGIC
#define SETJMP_MAGIC

typedef struct jmp_buf {} jmp_buf[1];

int setjmp (jmp_buf j);
_Noreturn void longjmp (jmp_buf j, int v);

#endif
