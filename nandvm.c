#include <stdio.h>

int
main (int argc, char *argv[])
{
  char acc = 0, tmp = 0; // registers
  char mem[16384];       // memory
  int sp = 0;            // stack pointer
  char instr;

  while ((instr = getchar()) != EOF) {
    switch (instr) {
    case 'f' /* False */ : acc = 0;             break;
    case 't' /* True  */ : acc = 1;             break;
    case 's' /* Push  */ : mem[sp++] = acc;     break; 
    case 'l' /* Pop   */ : acc = mem[--sp];     break; 
    case 'h' /* Hold  */ : tmp = acc;           break;
    case 'n' /* Nand  */ : acc = !(acc && tmp); break;
    case 'v' /* Nand  */ : acc = 2              break; // the vegemite conditional
    }
  }

  printf("result = %d\n", acc);
  return 0;
}
