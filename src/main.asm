org 0x7C00
bits 16


%define ENDL 0x0D, 0x0A


start:
	jmp main

;
; Prints a string to the screen
; Params:
; 	- ds:si points to a string
;
puts: 
	; save registers we will modify
	push si 
	push ax
	
.loop:
	lodsb		; loads next character in al 
	or al, al	; verify if next character is null?
	jz .done 

	mov ah, 0x0e
	int 0x10

	jmp .loop

.done:
	pop ax
	pop si
	ret

main:

	; set up data segements
	mov ax, 0
	mov ds, ax
	mov es, ax

	;setup stack
	mov ss, ax
	mov sp, 0x7C00		; stack grows downward from where we are loaded in memory
	; the stack stores the return values of functions and starts at the beginning of program

	; print message
	mov si, msg_hello
	call puts
	
	hlt
	
.halt:
	jmp .halt

msg_hello: db 'Hello world!', ENDL, 0


times 510-($-$$) db 0
dw 0AA55h
