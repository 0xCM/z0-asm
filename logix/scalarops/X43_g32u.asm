; uint f43<uint>(uint a, uint b, uint c)
; X43_g32u[7ff7c6b936a0h, 7ff7c6b936b4h][20] = {0f 1f 44 00 00 44 23 c1 41 8b c0 f7 d0 f7 d2 33 d1 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:061
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8d,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c1}
0008h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000fh xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0011h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
