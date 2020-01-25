; uint f38<uint>(uint a, uint b, uint c)
; X38_g32u[7ff7c6ba2080h, 7ff7c6ba2090h][16] = {0f 1f 44 00 00 44 0b c1 33 d1 41 23 d0 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:41:465
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or r8d,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b c1}
0008h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
