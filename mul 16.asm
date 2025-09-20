global _start

section .data
    num1 dw 0x000A       
    num2 dw 0x0005    
    result dd 0          

section .text
_start:
    mov ax, [num1]       
    mov bx, [num2]     
    mul bx               

    mov [result], ax     
    
    mov [result+2], dx   

    xor ebx, ebx
    mov eax, 1
    int 0x80
