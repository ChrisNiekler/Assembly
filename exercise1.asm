;NOTE  if you can not link this file try ->sudo apt install gcc-multilib

;Implent a program which returns a text 5 times using the C function printf
section .text
extern printf
global main

main:
	mov edi, 5

loop:
	push Message
	call printf
	dec edi
	jnz loop

ende:
	mov eax, 1
	mov ebx, 0
	int 80h

section .data

	Message db 'Hello World!', 0xa
