; uint f2e<uint>(uint a, uint b, uint c)
; X2E_g32u[7ff7c6b91130h, 7ff7c6b91140h][16] = {0f 1f 44 00 00 44 0b c2 23 d1 41 33 d0 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:547
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or r8d,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b c2}
0008h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ah xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
