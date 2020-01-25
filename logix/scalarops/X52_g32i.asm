; int f52<int>(int a, int b, int c)
; X52_g32i[7ff7c6b8c380h, 7ff7c6b8c392h][18] = {0f 1f 44 00 00 41 23 d0 8b c2 f7 d0 41 33 c8 23 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:392
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000fh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
