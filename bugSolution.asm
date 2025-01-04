mov ecx, [esp + 0x04] ; assuming ecx holds the size of the array
mov ebx, [esp + 0x08] ; assuming ebx holds the base address of the array
mov eax, [esp + 0x0C] ; assuming eax holds the index

;Bounds checking
cmp eax, ecx
je error_handler ; Jump to error handler if index is out of bounds
jl access_memory ; Jump to memory access if index is in bounds

error_handler:
;Handle the error
jmp exit_program

access_memory:
mov eax, [ebx + eax*4 + 0x10] ; Access the memory if the index is valid

jmp exit_program
exit_program:
;exit the program
