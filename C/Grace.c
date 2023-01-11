#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#define MAIN(x) int main() { int fd; x; dprintf(fd, "MAIN(" #x ")"); }
MAIN(fd = open("Grace_kid.c", O_WRONLY | O_CREAT | O_TRUNC, 00744); dprintf(fd, "#include <unistd.h>\n#include <stdio.h>\n#include <fcntl.h>\n#define MAIN(x) int main() { int fd; x; dprintf(fd, \"MAIN(\" #x \")\"); }\n");)