;;-----------------------------------------------------------------------------.
 ; Student: Sarah Bass                                                         |
 ; Program: hello.s                                                            |
 ; Description: Prints "Hello, world!" in multiple lines and an text art hello |
;;-----------------------------------------------------------------------------'

section .data

msg:            db      "Hello, world!", 10
MSGLEN:         equ     $-msg

msg2:            db      "Hallo, welt!", 10
MSGLEN2:         equ     $-msg2

msg3:            db      "Hola, Mundo!", 10
MSGLEN3:         equ     $-msg3

msg4:            db      "Hej världen!", 10
MSGLEN4:         equ     $-msg4

earth:            db      " _          _ _                            _     _ ", 10
EARTHLEN:         equ     $-earth

earth1:            db      "| |__   ___| | | ___   __      _____  _ __| | __| |", 10
EARTHLEN1:         equ     $-earth1

earth2:            db      "| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |", 10
EARTHLEN2:         equ     $-earth2

earth3:            db      "| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |", 10
EARTHLEN3:         equ     $-earth3

earth4:            db      "|_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|", 10
EARTHLEN4:         equ     $-earth4







section .text

;; Program code goes here

global _start
_start:
    ;call _msg
    ;call _msg2
    ;call _msg3
    ;call _msg4

    ;call _earth
    ;call _earth2
    ;call _earth3
    ;call _earth4
    syscall
_msg:
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    msg             ; 2nd arg, addr. of message
    mov     rdx,    MSGLEN          ; 3rd arg, num. of chars to print
    syscall

    _msg2:
    mov     rax,    1                ; Syscall code in rax
    mov     rdi,    1                ; 1st arg, file desc. to write to
    mov     rsi,    msg2             ; 2nd arg, addr. of message
    mov     rdx,    MSGLEN2          ; 3rd arg, num. of chars to print
    syscall

    _msg3:
    mov     rax,    1                ; Syscall code in rax
    mov     rdi,    1                ; 1st arg, file desc. to write to
    mov     rsi,    msg3             ; 2nd arg, addr. of message
    mov     rdx,    MSGLEN3          ; 3rd arg, num. of chars to print
    syscall

     _msg4:
    mov     rax,    1                ; Syscall code in rax
    mov     rdi,    1                ; 1st arg, file desc. to write to
    mov     rsi,    msg4             ; 2nd arg, addr. of message
    mov     rdx,    MSGLEN4          ; 3rd arg, num. of chars to print
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
    mov     rax,    1               ; Syscall code in rax
    mov     rdi,    1               ; 1st arg, file desc. to write to
    mov     rsi,    earth4          ; 2nd arg, addr. of message
    mov     rdx,    EARTHLEN4       ; 3rd arg, num. of chars to print
    syscall



     
    ;; Terminate process
    mov     rax,    60              ; Syscall code in rax
    mov     rdi,    0               ; First parameter in rdi
    syscall                         ; End process