#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#define C(fd, x, y, z) x; y; z; dprintf(fd, "    C(fd, " #x ", " #y ", " #z ")\n");
int main() {
    int i = 5;
    if (i <= 0) { exit(0); }
    char var[] = "    int i = 0;\n"; var[12] += --i;
    char name[] = "Sully_0"; name[6] += i;
    char *src = calloc(1000, 1);
    strcat(src, name);
    strcat(src, ".c");
    int fd = open(src, O_WRONLY | O_CREAT | O_TRUNC, 0744);
    C(fd, dprintf(fd, "#include <stdio.h>\n" "#include <unistd.h>\n" "#include <fcntl.h>\n" "#include <stdlib.h>\n" "#include <string.h>\n" "#define C(fd, x, y, z) x; y; z; dprintf(fd, \"    C(fd, \" #x \", \" #y \", \" #z \")\\n\");\n" "int main() {\n"), write(fd, var, strlen(var)), dprintf(fd, "    if (i <= 0) { exit(0); }\n" "    char var[] = \"    int i = 0;\\n\"; var[12] += --i;\n" "    char name[] = \"Sully_0\"; name[6] += i;\n" "    char *src = calloc(1000, 1);\n" "    strcat(src, name);\n" "    strcat(src, \".c\");\n" "    int fd = open(src, O_WRONLY | O_CREAT | O_TRUNC, 0744);\n"))
#define B(fd, x) x; dprintf(fd, "    B(fd, " #x ")\n");
#define A(fd, x, y, z) dprintf(fd, "    A(fd, " #x ", " #y ", " #z ")\n}\n"); x; y; z;
    char *com = calloc(1000, 1);
    strcat(com, "gcc -Wall -Wextra -Werror ");
    strcat(com, src);
    strcat(com, " -o ");
    strcat(com, name);
    strcat(com, " && ./");
    strcat(com, name);
    B(fd, dprintf(fd, "#define B(fd, x) x; dprintf(fd, \"    B(fd, \" #x \")\\n\");\n" "#define A(fd, x, y, z) dprintf(fd, \"    A(fd, \" #x \", \" #y \", \" #z \")\\n}\\n\"); x; y; z;\n" "    char *com = calloc(1000, 1);\n" "    strcat(com, \"gcc -Wall -Wextra -Werror \");\n" "    strcat(com, src);\n" "    strcat(com, \" -o \");\n" "    strcat(com, name);\n" "    strcat(com, \" && ./\");\n" "    strcat(com, name);\n"))
    A(fd, system(com), free(com), close(fd))
}
