%macro as 2
mov rsi,%2
cmp al,%1
cmove rax,rsi
%endmacro
default rel
global _main
extern _write
extern _printf
extern _strlen
extern _open
extern _strcat
extern _strcpy
extern _system
extern _exit
;mainここから
_main:
push rbp
mov rbp,rsp
push r12
push r13
push r14
push r15
;プログラム名生成
sub rsp,1000H
mov r12,5;int i = 4
cmp r12,0
jns .cont1;i < 0 なら exit(0)
mov rdi,0
call _exit
.cont1:
cmp r12,5;i > 5 なら exit(0)
jna .cont2
mov rdi,0
call _exit
.cont2:
lea rdi,[rsp];[rsp]にプログラム名
lea rsi,[_fn]
call _strcpy
add byte [rax+6],r12b
;ソースファイル名生成
lea rdi,[rsp+12];[rsp+12]にファイル名
lea rsi,[rsp]
call _strcpy
lea rdi,[rsp+12]
lea rsi,[_xt]
call _strcat
; _xxx:
; lea rdi,[rax]
; call _printf
;system関数の引数生成
lea rdi,[rsp+24];[rsp+24]にsystemの引数
lea rsi,[_sa0]
call _strcpy
lea rdi,[rsp+24]
lea rsi,[rsp]
call _strcat
lea rdi,[rsp+24]
lea rsi,[_sa1]
call _strcat
lea rdi,[rsp+24]
lea rsi,[rsp]
call _strcat
lea rdi,[rsp+24]
lea rsi,[_sa2]
call _strcat
lea rdi,[rsp+24]
lea rsi,[rsp]
call _strcat
lea rdi,[rsp+24]
lea rsi,[_sa3]
call _strcat
lea rdi,[rsp+24]
lea rsi,[rsp]
call _strcat
; lea rdi,[rsp+24];ここのコメントアウトを外すとビルドしたファイルを実行する
; lea rsi,[_sa4]
; call _strcat
; lea rdi,[rsp+24]
; lea rsi,[rsp]
; call _strcat
;ファイル開く
lea rdi,[rsp+12]
mov rsi,1537
mov rdx,420
call _open
;ソースコード出力
;ソースコード出力は,ここまでではなく全体を出力するべきことに注意
mov rdi,rax
lea rsi,[_s]
mov rdx,r12
call _xo
;コンパイル&&実行
lea rdi,[rsp+24]
call _system
;退避
xor rax,rax
add rsp,1000H
pop r15
pop r14
pop r13
pop r12
pop rbp
ret
;end _main
_xo:;(fd,str,i)特定の文字を特定の結果に置換しつつ出力
push rbp
mov rbp,rsp
push r12
push r13
push r14
push r15
sub rsp,32
mov r12,rsi
mov r13,rsi
mov r14,rdi
mov r15,rdx
add r15,'0'
dec r15;i-1に対応する文字
.l:
cmp byte[r12],0
jz .t
mov al,byte[r12]
as 63,r15;クエスチョンをi-1に変換
as 36,10;ダラーをnlに置換
as 64,96;アットマークをバッククオートに置換
cmp al,94;ハットを入力文字列自身に置換
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
add rsp,32
pop r15
pop r14
pop r13
pop r12
pop rbp
ret
;end _xo
_fn:db "Sully_0",0
_xt:db ".s",0
_nasm:db "nasm -f macho64 -g Grace.s -o Grace.o && gcc -g Grace.o -o Grace && ./Grace",0
_sa0:db "nasm -f macho64 ",0
_sa1:db ".s -o ",0
_sa2:db ".o && gcc -g ",0
_sa3:db ".o -o ",0
_sa4:db " && ./",0
_s:db `%macro as 2$mov rsi,%2$cmp al,%1$cmove rax,rsi$%endmacro$default rel$global _main$extern _write$extern _printf$extern _strlen$extern _open$extern _strcat$extern _strcpy$extern _system$extern _exit$;mainここから$_main:$push rbp$mov rbp,rsp$push r12$push r13$push r14$push r15$;プログラム名生成$sub rsp,1000H$mov r12,?;int i = ?$cmp r12,0$jns .cont1;i < 0 なら exit(0)$mov rdi,0$call _exit$.cont1:$cmp r12,5;i > 5 なら exit(0)$jna .cont2$mov rdi,0$call _exit$.cont2:$lea rdi,[rsp];[rsp]にプログラム名$lea rsi,[_fn]$call _strcpy$add byte [rax+6],r12b$;ソースファイル名生成$lea rdi,[rsp+12];[rsp+12]にファイル名$lea rsi,[rsp]$call _strcpy$lea rdi,[rsp+12]$lea rsi,[_xt]$call _strcat$; _xxx:$; lea rdi,[rax]$; call _printf$;system関数の引数生成$lea rdi,[rsp+24];[rsp+24]にsystemの引数$lea rsi,[_sa0]$call _strcpy$lea rdi,[rsp+24]$lea rsi,[rsp]$call _strcat$lea rdi,[rsp+24]$lea rsi,[_sa1]$call _strcat$lea rdi,[rsp+24]$lea rsi,[rsp]$call _strcat$lea rdi,[rsp+24]$lea rsi,[_sa2]$call _strcat$lea rdi,[rsp+24]$lea rsi,[rsp]$call _strcat$lea rdi,[rsp+24]$lea rsi,[_sa3]$call _strcat$lea rdi,[rsp+24]$lea rsi,[rsp]$call _strcat$; lea rdi,[rsp+24];ここのコメントアウトを外すとビルドしたファイルを実行する$; lea rsi,[_sa4]$; call _strcat$; lea rdi,[rsp+24]$; lea rsi,[rsp]$; call _strcat$;ファイル開く$lea rdi,[rsp+12]$mov rsi,1537$mov rdx,420$call _open$;ソースコード出力$;ソースコード出力は,ここまでではなく全体を出力するべきことに注意$mov rdi,rax$lea rsi,[_s]$mov rdx,r12$call _xo$;コンパイル&&実行$lea rdi,[rsp+24]$call _system$;退避$xor rax,rax$add rsp,1000H$pop r15$pop r14$pop r13$pop r12$pop rbp$ret$;end _main$_xo:;(fd,str,i)特定の文字を特定の結果に置換しつつ出力$push rbp$mov rbp,rsp$push r12$push r13$push r14$push r15$sub rsp,32$mov r12,rsi$mov r13,rsi$mov r14,rdi$mov r15,rdx$add r15,'0'$dec r15;i-1に対応する文字$.l:$cmp byte[r12],0$jz .t$mov al,byte[r12]$as 63,r15;クエスチョンをi-1に変換$as 36,10;ダラーをnlに置換$as 64,96;アットマークをバッククオートに置換$cmp al,94;ハットを入力文字列自身に置換$jnz .c$mov rdi,r13$call _strlen$mov rdi,r14$mov rsi,r13$mov rdx,rax$call _write$lea r12,[r12+1]$jmp .l$.c:$mov byte[rsp],al$mov rdi,r14$mov rsi,rsp$mov rdx,1$call _write$lea r12,[r12+1]$jmp .l$.t:$add rsp,32$pop r15$pop r14$pop r13$pop r12$pop rbp$ret$;end _xo$_fn:db "Sully_0",0$_xt:db ".s",0$_nasm:db "nasm -f macho64 -g Grace.s -o Grace.o && gcc -g Grace.o -o Grace && ./Grace",0$_sa0:db "nasm -f macho64 ",0$_sa1:db ".s -o ",0$_sa2:db ".o && gcc -g ",0$_sa3:db ".o -o ",0$_sa4:db " && ./",0$_s:db @^@,0$`,0
