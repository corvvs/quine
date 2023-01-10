#include <stdio.h>
const char *encoded = "jou!nbjo)*!|%0+%dpnnfou!jo!nbjo%+0%qsjoug)#$jodmvef!=tuejp/i?]odpotu!dibs!+fodpefe!>!]#&t]#<]owpje!efdpef)dpotu!dibs+!b*!|!xijmf)+b*!qvudibs)+b!.!2!>>!47!@!21!;!+b!.!2*-!,,b<!~]o0+]odpnnfou!po!gjmf]o+0]o#-!fodpefe*<!efdpef)fodpefe*<%~%";
void decode(const char* a) { while(*a) putchar(*a - 1 == 36 ? 10 : *a - 1), ++a; }
/*
comment on file
*/
int main() {
/*
comment in main
*/
printf("#include <stdio.h>\nconst char *encoded = \"%s\";\nvoid decode(const char* a) { while(*a) putchar(*a - 1 == 36 ? 10 : *a - 1), ++a; }\n/*\ncomment on file\n*/\n", encoded); decode(encoded);
}
