; int f2a<int>(int a, int b, int c)
; X2A_g32i[7ff7c6ba0650h, 7ff7c6ba065fh][15] = {0f 1f 44 00 00 23 d1 8b c2 f7 d0 41 23 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:215
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
