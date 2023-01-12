#define B(fd, x) x; dprintf(fd, "C(" #x);
#define A(fd, x) dprintf(fd, ", t, in, ma, n)\n"); x;
#define C(x, a, b, c, d) b##a c##b() { int fd = open("Grace_kid.c", O_WRONLY | O_CREAT | O_TRUNC, 00744); B(fd, x) A(fd, close(fd)) }
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
/*
useless comment
*/
C(dprintf(fd, "#define B(fd, x) x; dprintf(fd, \"C(\" #x);\n#define A(fd, x) dprintf(fd, \", t, in, ma, n)\\n\"); x;\n#define C(x, a, b, c, d) b##a c##b() { int fd = open(\"Grace_kid.c\", O_WRONLY | O_CREAT | O_TRUNC, 00744); B(fd, x) A(fd, close(fd)) }\n#include <stdio.h>\n#include <unistd.h>\n#include <fcntl.h>\n/*\nuseless comment\n*/\n"), t, in, ma, n)
