; bit f34(bit a, bit b, bit c)
; X34[7ff7c6a1d900h, 7ff7c6a1d915h][21] = {0f 1f 44 00 00 44 23 c2 41 8b c0 f7 d0 83 e0 01 33 d1 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:36:860
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8d,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c2}
0008h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0012h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
