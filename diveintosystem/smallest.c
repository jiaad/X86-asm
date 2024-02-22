#include <stdio.h>

int getSmallest(int x, int y) {
  int smallest;
  if (x > y) {
    smallest = y;
  } else {
    smallest = x;
  }
  return smallest;
}
