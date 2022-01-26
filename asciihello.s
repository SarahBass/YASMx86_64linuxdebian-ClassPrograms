;;;------------------------------------------------------------------------;;;
 ;; Student: Sarah Bass                                                    |||
 ;; Program Name: asciihello.s                                             |||
 ;;DESCRIPTION-------------------------------------------------------------;;;
    ;tests the use of spacing, ascii, emojis, and taking input             |||
    ;tests if input is 0, output is 1                                      |||
 ;;SPACING-----------------------------------------------------------------;;;
    ;less than 9 is less than a tab apart                                  |||
    ;9 is a tab space on same line                                         |||
    ;10 is a newline print                                                 |||
    ;11 printed a blank line and formatted the next line to come after     |||
    ;12 printed a blank line and formatted the next line to come after     |||
    ;13 overlaps and replaces print on one line to the next                |||
;;;------------------------------------------------------------------------;;;
section .data

    msg1 db "What is your name?", 10

    MSGLEN:         equ     $-msg1

    msg2 db "Hello, ", 10

    MSGLEN2:         equ     $-msg2
    
    earth:            db      "✨🥑✨🌶️✨🧅✨🍅✨🥑✨🌶️✨🧅✨🍅✨", 13
    EARTHLEN:         equ     $-earth

    earth1:            db      "⌐■-■ ", 10
    EARTHLEN1:         equ     $-earth1

    earth2:            db      "(●_●)", 10
    EARTHLEN2:         equ     $-earth2

    earth3:            db      "( >🌮 Good job, here is a taco.", 10
    EARTHLEN3:         equ     $-earth3

    earth4:            db      "✨🥑✨🌶️✨🧅✨🍅✨🥑✨🌶️✨🧅✨🍅✨", 10
    EARTHLEN4:         equ     $-earth4

section .bss

    name resb 16

section .text

;; Program code goes here

    global _start
_start:

    call _printmsg1
    ;call _getName
    call _printmsg2
    ;call _printName

    syscall

    ;_getName:
    ;    mov rax, 0
    ;    move rdi, 0
    ;    mov rsi, name
    ;    mov rdx, 16
    ;    syscall


    _printmsg1:

        mov     rax,    1               ; Syscall code in rax
        mov     rdi,    1               ; 1st arg, file desc. to write to
        mov     rsi,    msg1            ; 2nd arg, addr. of message
        mov     rdx,    MSGLEN          ; 3rd arg, num. of chars to print
        syscall
    
    _printmsg2:
        mov     rax,    1               ; Syscall code in rax
        mov     rdi,    1               ; 1st arg, file desc. to write to
        mov     rsi,    msg2            ; 2nd arg, addr. of message
        mov     rdx,    MSGLEN2         ; 3rd arg, num. of chars to print
        syscall
     _earth:
    mov     rax,    1                 ; Syscall code in rax
    mov     rdi,    1                 ; 1st arg, file desc. to write to
    mov     rsi,    earth             ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN          ; 3rd arg, num. of chars to print
    syscall

     _earth1:
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    earth1          ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN1       ; 3rd arg, num. of chars to print
    syscall

     _earth2:
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    earth2          ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN2       ; 3rd arg, num. of chars to print
    syscall

     _earth3:
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    earth3          ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN3       ; 3rd arg, num. of chars to print
    syscall

    _earth4:
    mov     rax,    1                  ; Syscall code in rax
    mov     rdi,    1                  ; 1st arg, file desc. to write to
    mov     rsi,    earth4             ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN4          ; 3rd arg, num. of chars to print
    syscall


    ;_printName:
    ;    mov rax, 1
    ;    mov rdi, 1
    ;    mov rsi, name
    ;    mov rdx, 16
    ;    syscall
    

   ;; Terminate process
    mov     rax,    60              ; Syscall code in rax
    mov     rdi,    0               ; First parameter in rdi
    syscall                         ; End process