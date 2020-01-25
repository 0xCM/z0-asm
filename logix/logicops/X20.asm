; bit f20(bit a, bit b, bit c)
; X20[7ff7c6a1d560h, 7ff7c6a1d572h][18] = {0f 1f 44 00 00 8b c2 f7 d0 83 e0 01 23 c1 41 23 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:36:828
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
