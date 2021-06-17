
; nasm -elf64 -o helloworld.o helloworld.asm
; ld -o helloworld helloworld.o
; ./ helloworld



section .data

msg1: db "Hello, world" ,10

section .text

global _start

_start:

mov rax, 1
mov rdi, 1
mov rsi, msg1
mov rdx, 13
syscall

mov rax, 60
xor rdi, rdi
syscall

