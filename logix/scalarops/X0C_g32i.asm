; int f0c<int>(int a, int b, int c)
; X0C_g32i[7ff7c6cc53d0h, 7ff7c6cc53dch][12] = {0f 1f 44 00 00 8b c1 f7 d0 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:787
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
