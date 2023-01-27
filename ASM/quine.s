default rel
global _main
extern _strlen
extern _write
%macro as 2
mov rsi,%2
cmp al,%1
cmove rax,rsi
%endmacro
SECTION .text
_o:
push rbp
mov rbp,rsp
push r12
push r13
sub rsp,16
mov r12,rdi
mov r13,rdi
.l:
cmp byte[r12],0
jz .t
mov al,byte[r12]
as 36,10
as 64,96
cmp al,94
jnz .c
mov rdi,r13
call _strlen
mov rdi,1
mov rsi,r13
mov rdx,rax
call _write
lea r12,[r12+1]
jmp .l
.c:
mov byte[rsp],al
mov rdi,1
mov rsi,rsp
mov rdx,1
call _write
lea r12,[r12+1]
jmp .l
.t:
add rsp,16
pop r13
pop r12
pop rbp
ret
_str:
db `default rel$global _main$extern _strlen$extern _write$%macro as 2$mov rsi,%2$cmp al,%1$cmove rax,rsi$%endmacro$SECTION .text$_o:$push rbp$mov rbp,rsp$push r12$push r13$sub rsp,16$mov r12,rdi$mov r13,rdi$.l:$cmp byte[r12],0$jz .t$mov al,byte[r12]$as 36,10$as 64,96$cmp al,94$jnz .c$mov rdi,r13$call _strlen$mov rdi,1$mov rsi,r13$mov rdx,rax$call _write$lea r12,[r12+1]$jmp .l$.c:$mov byte[rsp],al$mov rdi,1$mov rsi,rsp$mov rdx,1$call _write$lea r12,[r12+1]$jmp .l$.t:$add rsp,16$pop r13$pop r12$pop rbp$ret$_str:$db @^@,0$_main:$push rbp$mov rbp,rsp$lea rdi,[_str]$call _o$xor eax,eax$pop rbp$ret$`,0
_main:
push rbp
mov rbp,rsp
lea rdi,[_str]
call _o
xor eax,eax
pop rbp
ret
