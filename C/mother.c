#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
const char *a = "jou!nbjo)*!|!jou!ge!>!pqfo)#npuifs`lje/d#-!P`XSPOMZ!}!P`DSFBU!}!P`USVOD-!11855*<!eqsjoug)ge-!#$jodmvef!=vojtue/i?]o$jodmvef!=tuejp/i?]o$jodmvef!=gdoum/i?]odpotu!dibs!+b!>!]#&t]#<]owpje!g)jou!ge-!dpotu!dibs+!b*!|!dibs!d<!xijmf)+b*!d!>!)+b,,!.!2*-!xsjuf)ge-!'d-!2*<!~]o#-!b*<!g)ge-!b*<!dmptf)ge*<!~";
void f(int fd, const char* a) { char c; while(*a) c = (*a++ - 1), write(fd, &c, 1); }
int main() { int fd = open("mother_kid.c", O_WRONLY | O_CREAT | O_TRUNC, 00744); dprintf(fd, "#include <unistd.h>\n#include <stdio.h>\n#include <fcntl.h>\nconst char *a = \"%s\";\nvoid f(int fd, const char* a) { char c; while(*a) c = (*a++ - 1), write(fd, &c, 1); }\n", a); f(fd, a); close(fd); }