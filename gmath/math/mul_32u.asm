; uint mul(uint a, uint b)
; mul_32u[7ff7c719a3a0h, 7ff7c719a3abh][11] = {0f 1f 44 00 00 8b c1 0f af c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:435
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
