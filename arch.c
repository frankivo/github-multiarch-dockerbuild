#include <stdio.h>
#include <stdlib.h>

#ifndef ARCH
#define ARCH "Undefined"
#endif
 
int main() {
  printf("Hello, World!\n");
  printf("My architecture is %s !\n", ARCH);
  exit(0);
}
