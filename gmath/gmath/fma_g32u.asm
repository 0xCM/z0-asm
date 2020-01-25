; uint fma<uint>(uint x, uint y, uint z)
; fma_g32u[7ff7c7194e40h, 7ff7c7194e4eh][14] = {0f 1f 44 00 00 0f af d1 41 03 d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:255
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
