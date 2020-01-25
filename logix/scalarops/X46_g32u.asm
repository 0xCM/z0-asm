; uint f46<uint>(uint a, uint b, uint c)
; X46_g32u[7ff7c6ba3c10h, 7ff7c6ba3c22h][18] = {0f 1f 44 00 00 41 23 c8 8b c1 f7 d0 41 33 d0 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:723
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
