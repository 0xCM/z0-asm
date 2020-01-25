; uint f56<uint>(uint a, uint b, uint c)
; X56_g32u[7ff7c6b8c950h, 7ff7c6b8c95dh][13] = {0f 1f 44 00 00 0b d1 41 33 d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:471
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
