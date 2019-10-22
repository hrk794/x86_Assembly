;  x86 Assembly exercise 2


global _start  			; global denotes the entry point of the program
_start: 			; Everything that starts with an underscore is a label
	mov eax, 1		; moves 1 to EAX register
	mov ebx, 42		; moves 42 to EBX register
	sub ebx, 29		; subtracts 29 from the value in EBX and stores result in EBX
	int 0x80		; Causes an interupt to occur, 0x80 is for system calls. 
				; Type of system call is determined by the value in EAX, 1 means exit
				; and the exit status is taken from EBX register
				; This can be verified with the 'echo $?' command after 
				; executing the executable file
