; The classical  hello world

section .text						; make main functino externally visible
		global  _start
_start:
		mov eax, 4				; system call number ( 4 = system write)
		mov ebx, 1				; file descripotor ( 0 = stdout)
		mov ecx, mymsg				; masage to write
		mov edx, mylen				; message string length
		int 80h					; call Linux kernel

		mov eax, 1				; system call number ( 0  =  sys_exit )
		mov ebx, 0				; exit without error / return 0 ( = success)
		int 80h
section .data
		mymsg db 'Hello  World', 10		; string with a carriage-return
		mylen equ $-mymsg			; string length in bytes
