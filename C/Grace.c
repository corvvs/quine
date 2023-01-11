#define B(fd, x) x; dprintf(fd, "C(" #x);
#define A(fd, x) dprintf(fd, ")\n"); x;
#define C(x) int main() { int fd = open("Grace_kid.c", O_WRONLY | O_CREAT | O_TRUNC, 00744); B(fd, x) A(fd, close(fd)) }
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
/*
useless comment
*/
C(dprintf(fd, "#define B(fd, x) x; dprintf(fd, \"C(\" #x);\n#define A(fd, x) dprintf(fd, \")\\n\"); x;\n#define C(x) int main() { int fd = open(\"Grace_kid.c\", O_WRONLY | O_CREAT | O_TRUNC, 00744); B(fd, x) A(fd, close(fd)) }\n#include <stdio.h>\n#include <unistd.h>\n#include <fcntl.h>\n/*\nuseless comment\n*/\n"))
