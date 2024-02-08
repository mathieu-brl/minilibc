[BITS 64]

global memset

section .text
memset:
    xor rcx, rcx
    cmp rdi, 0
    je .null
    jmp .set

.null:
    mov rax, 0
    ret

.set:
    cmp rcx, rdx
    je .end
    mov [rdi + rcx], rsi
    inc rcx
    jmp .set

.end:
    mov rax, rdi
    ret