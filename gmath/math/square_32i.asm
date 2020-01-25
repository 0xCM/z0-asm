; int square(int src)
; square_32i[7ff7c7187bf0h, 7ff7c7187bfbh][11] = {0f 1f 44 00 00 8b c1 0f af c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:232
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
