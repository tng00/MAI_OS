#include "../../common/sub.h"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdlib.h>

enum
{
  READ = 0,
  WRITE = 1
};

int GetFileDescriptorFromSTDIN()
{
  struct Line filename = GetLine(false);
  int descriptor = open(filename.str, O_CREAT | O_WRONLY | O_TRUNC, 0666);
  DestroyLine(&filename);

  if (descriptor == -1)
  {
    perror("Error while opening file");
  }
  return descriptor;
}

int *CreatePipe()
{
  int *_pipe = malloc(2 * sizeof(int));
  int code = pipe2(_pipe, O_CLOEXEC);
  if (code == -1)
    perror("Error occurred while creating pipe");
  return _pipe;
}

bool isFirstThread()
{
  return ((rand() % 10) + 1 <= 8) ? true : false;
}

int main()
{
  int file1, file2;
  int *pipe1, *pipe2;

  file1 = GetFileDescriptorFromSTDIN();
  file2 = GetFileDescriptorFromSTDIN();

  pipe1 = CreatePipe();
  pipe2 = CreatePipe();

  pid_t childId = fork();
  if (childId == -1)
  {
    perror("Error while forking");
  }
  if (childId == 0)
  {
    close(pipe1[WRITE]);
    dup2(pipe1[READ], fileno(stdin));
    dup2(file1, fileno(stdout));
    if (execl("./LAB1-son", "LAB1-son", NULL) == -1)
    {
      perror("execl");
    }
  }

  pid_t childId2 = fork();
  if (childId2 == -1)
  {
    perror("Error while forking");
  }
  if (childId2 == 0)
  {
    close(pipe2[WRITE]);
    dup2(pipe2[READ], fileno(stdin));
    dup2(file2, fileno(stdout));
    if (execl("./LAB1-son", "LAB1-son", NULL) == -1)
    {
      perror("execl");
    }
  }

  struct Line line = GetLine(true);
  while (line.size > 1)
  {
    if (isFirstThread())
    {
      write(pipe1[WRITE], line.str, line.size * sizeof(char));
    }
    else
    {
      write(pipe2[WRITE], line.str, line.size * sizeof(char));
    }
    DestroyLine(&line);
    line = GetLine(true);
  }

  close(pipe1[WRITE]);
  close(pipe2[WRITE]);

  close(file1);
  close(file2);
}
