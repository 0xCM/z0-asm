; int f08<int>(int a, int b, int c)
; X08_g32i[7ff7c6ca6070h, 7ff7c6ca607fh][15] = {0f 1f 44 00 00 8b c1 f7 d0 23 c2 41 23 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:230
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
