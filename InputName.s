;;;------------------------------------------------------------------------;;;
 ;; Student: Sarah Bass                                                    |||
 ;; Program Name: Assignment1SarahBass.s                                   |||
 ;;DESCRIPTION-------------------------------------------------------------;;;
   ;Write an assembly program which prompts the user for their name,       |||
   ;printing What is your name? and then accepts up to 255 characters of   ||| 
   ;input, and then prints out Hello,name, nice to meet you! followed by a |||
   ;newline.                                                               |||
 ;;SPACING-----------------------------------------------------------------;;;
    ;less than 9 is less than a tab apart                                  |||
    ;9 is a tab space on same line                                         |||
    ;10 is a newline print                                                 |||
    ;11 printed a blank line and formatted the next line to come after     |||
    ;12 printed a blank line and formatted the next line to come after     |||
    ;13 overlaps and replaces print on one line to the next                |||
;;;------------------------------------------------------------------------;;;

section .data

    msg1            db      "What is your name?", 10
    MSGLEN:         equ     $-msg1

    msg2:            db      "Hello, ", 3
    MSGLEN2:         equ     $-msg2

    buffer:       times 255 db 0

section .text

    global _start
_start:

    call _printmsg1
    call _getName
    call _printmsg2
    call _printName
   
   _printmsg1:

        mov     rax,    1               
        mov     rdi,    1               
        mov     rsi,    msg1            
        mov     rdx,    MSGLEN          
        syscall

    _getName:
        mov rdx,    0
        mov rax,    0
        mov rsi,    buffer
        mov rdx,    255
        syscall
    
    _printmsg2:
        mov     rax,    1               
        mov     rdi,    1               
        mov     rsi,    msg2            
        mov     rdx,    MSGLEN2         
        syscall

    _printName:
        mov rax, 1
        mov rdi, 1
        mov rsi, buffer
        mov rdx, 255
       syscall

 ;; Terminate process
    mov     rax,    60              ; Syscall code in rax to sys_exit
    mov     rdi,    0               ; First parameter in rdi
    syscall                         ; End process
