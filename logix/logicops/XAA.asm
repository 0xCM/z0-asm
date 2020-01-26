------------------------------------------------------------------------------------------------------------------------
; bit faa(bit a, bit b, bit c)
; XAA[17] = {0f 1f 44 00 00 89 4c 24 08 89 54 24 10 41 8b c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
