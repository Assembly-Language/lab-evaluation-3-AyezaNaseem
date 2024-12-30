

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code
asmfunc PROC p1:DWORD, p2:DWORD
    ;p2 = [esp + 8]
    ;p1 = [esp + 4]
    mov esi , [esp + 4]        ; Negative value of the array
    mov esi , [esp + 8]        ; length of array 
next:
    test ax , [esi]
    mov ax , 8000h
    jnz foundNegative
    loopnz next 
    add esi , 2
    mov eax , 0
    jmp done
    
foundNegative:
    movsx eax , WORD ptr [esi] 
done:
    ret
asmfunc ENDP
end