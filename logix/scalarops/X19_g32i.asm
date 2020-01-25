; int f19<int>(int a, int b, int c)
; X19_g32i[7ff7c6b8ee60h, 7ff7c6b8ee74h][20] = {0f 1f 44 00 00 8b c2 41 33 c0 41 23 d0 23 d1 33 c2 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:153
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
000ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000dh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
