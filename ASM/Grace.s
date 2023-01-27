%macro A 0
default rel
global _main
extern _write
extern _strlen
extern _open
_main:
push rbp
push r12
push r13
mov rbp,rsp
lea rdi,[_str]
call _op
mov rdi,rax
lea rsi,[_str]
call _o
xor rax,rax
pop r13
pop r12
pop rbp
ret
%endmacro
%macro B 0
_fn:db "Grace_kid.s",0
_op:
push rbp
mov rbp,rsp
lea rdi,[_fn]
mov rsi,1537
mov rdx,420
call _open
pop rbp
ret
_o:
push rbp
mov rbp,rsp
push r12
push r13
push r14
sub rsp,24
mov r12,rsi
mov r13,rsi
mov r14,rax
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
mov rdi,r14
mov rsi,r13
mov rdx,rax
call _write
lea r12,[r12+1]
jmp .l
.c:
mov byte[rsp],al
mov rdi,r14
mov rsi,rsp
mov rdx,1
call _write
lea r12,[r12+1]
jmp .l
.t:
add rsp,24
pop r14
pop r13
pop r12
pop rbp
ret
_str:db `%macro A 0$default rel$global _main$extern _write$extern _strlen$extern _open$_main:$push rbp$push r12$push r13$mov rbp,rsp$lea rdi,[_str]$call _op$mov rdi,rax$lea rsi,[_str]$call _o$xor rax,rax$pop r13$pop r12$pop rbp$ret$%endmacro$%macro B 0$_fn:db "Grace_kid.s",0$_op:$push rbp$mov rbp,rsp$lea rdi,[_fn]$mov rsi,1537$mov rdx,420$call _open$pop rbp$ret$_o:$push rbp$mov rbp,rsp$push r12$push r13$push r14$sub rsp,24$mov r12,rsi$mov r13,rsi$mov r14,rax$.l:$cmp byte[r12],0$jz .t$mov al,byte[r12]$as 36,10$as 64,96$cmp al,94$jnz .c$mov rdi,r13$call _strlen$mov rdi,r14$mov rsi,r13$mov rdx,rax$call _write$lea r12,[r12+1]$jmp .l$.c:$mov byte[rsp],al$mov rdi,r14$mov rsi,rsp$mov rdx,1$call _write$lea r12,[r12+1]$jmp .l$.t:$add rsp,24$pop r14$pop r13$pop r12$pop rbp$ret$_str:db @^@,0$%endmacro$%macro as 2$mov rsi,%2$cmp al,%1$cmove rax,rsi$%endmacro$A$B$; nasm is tsurai$`,0
%endmacro
%macro as 2
mov rsi,%2
cmp al,%1
cmove rax,rsi
%endmacro
A
B
; nasm is tsurai
