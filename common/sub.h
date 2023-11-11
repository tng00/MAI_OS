#ifndef SUB_H_
#define SUB_H_

#include <stdbool.h>
#include <stddef.h>

struct Line
{
  size_t size;
  size_t capacity;
  char *str;
};

struct Line GetLine(bool withEnd);

void ReverseLine(struct Line *line);

void DestroyLine(struct Line *line);

#endif // SUB_H_
