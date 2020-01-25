; bit f4a(bit a, bit b, bit c)
; X4A[7ff7c6a1fef0h, 7ff7c6a1ff00h][16] = {0f 1f 44 00 00 41 0b d0 41 33 c8 8b c2 23 c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:42:918
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0008h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
