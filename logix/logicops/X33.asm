; bit f33(bit a, bit b, bit c)
; X33[7ff7c6a1faf0h, 7ff7c6a1fb06h][22] = {0f 1f 44 00 00 89 4c 24 08 44 89 44 24 18 8b c2 f7 d0 83 e0 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:42:884
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
