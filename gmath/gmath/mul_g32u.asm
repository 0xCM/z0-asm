; uint mul<uint>(uint a, uint b)
; mul_g32u[7ff7c71a8e10h, 7ff7c71a8e1bh][11] = {0f 1f 44 00 00 0f af d1 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:375
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
