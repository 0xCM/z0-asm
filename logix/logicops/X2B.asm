------------------------------------------------------------------------------------------------------------------------
; bit f2b(bit a, bit b, bit c)
; X2B[37] = {0f 1f 44 00 00 8b c2 23 c1 f7 d0 83 e0 01 0b d1 f7 d2 83 e2 01 41 23 c0 41 8b c8 f7 d1 23 d1 0b c2 83 e0 01 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0010h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0012h and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0015h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0018h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001bh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
001dh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
001fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0021h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
