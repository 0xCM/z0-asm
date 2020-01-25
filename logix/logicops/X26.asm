; bit f26(bit a, bit b, bit c)
; X26[7ff7c6a1d670h, 7ff7c6a1d684h][20] = {0f 1f 44 00 00 23 ca 8b c1 f7 d0 83 e0 01 41 33 d0 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:36:838
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
0011h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
