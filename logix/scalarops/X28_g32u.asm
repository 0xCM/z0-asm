; uint f28<uint>(uint a, uint b, uint c)
; X28_g32u[7ff7c6b906f0h, 7ff7c6b906fdh][13] = {0f 1f 44 00 00 33 d1 41 23 d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:377
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
