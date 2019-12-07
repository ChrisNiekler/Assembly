section .text

extern printf
global main

main:
	mov ebx, 1	; start ebx at 1
	mov ecx, 4	; number of iterations
loop:
	add ebx, ebx 	; ebx += ebx
	dec ecx		; ecx -= 1
	cmp ecx, 0	; compare ecx with 0
	jg loop		; jump to loop label if greater
print:
	push ebx	; push result to stack
	push output	; push output string to stack
	call printf	; call C print function and print stack
exit:
	mov eax, 1
	mov ebx, 0
	int 80h

section .data
	output db 'The result is: %d', 0xa, 0
