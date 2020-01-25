; int f4a<int>(int a, int b, int c)
; X4A_g32i[7ff7c6b94330h, 7ff7c6b94340h][16] = {0f 1f 44 00 00 41 0b d0 41 33 c8 23 d1 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:167
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0008h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000bh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
