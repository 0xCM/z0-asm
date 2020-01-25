; bit f22(bit a, bit b, bit c)
; X22[7ff7c6a1d5c0h, 7ff7c6a1d5d4h][20] = {0f 1f 44 00 00 89 4c 24 08 8b c2 f7 d0 83 e0 01 41 23 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:36:830
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
