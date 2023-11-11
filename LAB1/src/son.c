#include "../../common/sub.h"
#include <stdio.h>
#include <unistd.h>

int main()
{
  struct Line line = GetLine(false);
  while (line.size > 0)
  {
    ReverseLine(&line);
    printf("%s\n", line.str);
    DestroyLine(&line);
    line = GetLine(false);
  }

  return 0;
}
