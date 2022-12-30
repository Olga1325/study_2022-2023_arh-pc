%include 'in_out.asm'
SECTION .data
rem: DB 'Введите значение переменной x: ',0
div: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax,rem
call sprint
mov ecx, x
mov edx,80
call sread
mov eax,x
call atoi
xor edx,edx
mov ebx,2
div ebx
add eax,8
mov ebx,3
mul ebx
mov edi,eax
mov eax,div
call sprint
mov eax,edi
call iprintLF
call quit