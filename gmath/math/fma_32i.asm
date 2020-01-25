; int fma(int x, int y, int z)
; fma_32i[7ff7c719c040h, 7ff7c719c04eh][14] = {0f 1f 44 00 00 8b c1 0f af c2 41 03 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:658
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
