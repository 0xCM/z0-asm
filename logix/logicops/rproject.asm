------------------------------------------------------------------------------------------------------------------------
; bit right(bit a, bit b)
; rproject[12] = {0f 1f 44 00 00 89 4c 24 08 8b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
