#include "sub.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

struct Line GetLine(bool with_end)
{
  struct Line line;
  line.size = 0;
  line.capacity = 4;
  line.str = (char *)malloc(sizeof(char) * line.capacity);
  char tmp_c;

  read(fileno(stdin), &tmp_c, sizeof(char));
  while (tmp_c != '\n' && tmp_c != '\0')
  {
    line.str[line.size++] = tmp_c;
    if (line.size - 1 >= line.capacity)
    {
      line.capacity = line.capacity * 2;
      line.str = realloc(line.str, line.capacity);
    }
    read(fileno(stdin), &tmp_c, sizeof(char));
  }

  if (with_end)
  {
    line.str = realloc(line.str, line.size + 2);
    line.capacity = line.size + 2;
    line.str[line.size] = '\n';
    line.str[line.size + 1] = '\0';
    line.size = line.size + 1;
  }
  else
  {
    line.str = realloc(line.str, line.size + 1);
    line.capacity = line.size + 1;
    line.str[line.size] = '\0';
  }
  return line;
}

void ReverseLine(struct Line *line)
{
  size_t delta_size = line->size;
  for (int i = 0; i < delta_size / 2; ++i)
  {
    char temp = line->str[delta_size - i - 1];
    line->str[delta_size - i - 1] = line->str[i];
    line->str[i] = temp;
  }
}

void DestroyLine(struct Line *line)
{
  free(line->str);
  line->capacity = 0;
  line->size = 0;
}
