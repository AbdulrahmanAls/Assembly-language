
TITLE Reverse A String

.686
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
original_string BYTE "Hello, All!", 0
modified_string BYTE SIZEOF original_string DUP(0)

.code
main proc
	mov esi, 0
	mov ecx, SIZEOF original_string

L0:	mov al, original_string[esi]
	mov modified_string[ecx], al
	inc	esi
	loop L0
	invoke ExitProcess,0
main endp
end main