;;-----------------------------------------------------------------------------.
 ; Student: Sarah Bass                                                         |
 ; Program: hello.s                                                            |
 ; Description: Prints "Hello, world!" in multiple lines using different loops |
;;-----------------------------------------------------------------------------'

section .data
;Loop type Manual
msg:            db      "Hello, world!", 10 , "Hallo, welt!", 10 ,  "Hola, Mundo!", 10, "Hej världen!", 10
MSGLEN:         equ     $-msg

earth:          db      " _          _ _                            _     _ ", 10, "| |__   ___| | | ___   __      _____  _ __| | __| |", 10 , "| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |", 10 , "| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |", 10 , "|_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|", 10                      
EARTHLEN:       equ     $-earth

;Loop type do while 
looptext :      db      "🌎", 3
loopLEN:        equ     $-looptext

section .text

global _start
_start:
    ;call _msg
    ;call _earth
    
    
    syscall
    _msg:
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    msg             ; 2nd arg, addr. of message
    mov     rdx,    MSGLEN          ; 3rd arg, num. of chars to print
    syscall

    _earth:
    mov     rax,    1                 ; Syscall code in rax
    mov     rdi,    1                 ; 1st arg, file desc. to write to
    mov     rsi,    earth             ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN          ; 3rd arg, num. of chars to print
    syscall

    mov     rcx,    26

start_loop:

    mov     rax,    1                 ; Syscall code in rax
    mov     rdi,    1                 ; 1st arg, file desc. to write to
    mov     rsi,    looptext          ; 2nd arg, addr. of message
    mov     rdx,     loopLEN          ; 3rd arg, num. of chars to print
    
    mov     r15,     rcx
    syscall
    mov      rcx,    r15
    loop start_loop
  
    ;; Terminate process
    mov     rax,    60              ; Syscall code in rax
    mov     rdi,    0               ; First parameter in rdi
    syscall                         ; End process
