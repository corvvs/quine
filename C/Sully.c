#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
int main() {
    int i = 5;
    char *str = NULL;
    if (i <= 0) { exit(0); }
    asprintf(&str, "Sully_%d.c", --i);
    int fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0744);
    dprintf(fd,
    "#include <stdio.h>\n"
    "#include <unistd.h>\n"
    "#include <fcntl.h>\n"
    "#include <stdlib.h>\n"
    );
    dprintf(fd,
    "int main() {\n"
    "int i = %d;\n"
    "char *str = NULL;\n"
    "if (i <= 0) { exit(0); }\n"
    "asprintf(&str, \"Sully_%%d.c\", --i);\n"
    "int fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0744);\n"
    "close(fd);\n"
    "}\n"
    , i);
    close(fd);
    free(str);
    asprintf(&str, "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && ./Sully_%d", i, i, i);
    system(str);
    free(str);
}
