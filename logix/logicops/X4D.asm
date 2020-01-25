; bit f4d(bit a, bit b, bit c)
; X4D[7ff7c6a1dd50h, 7ff7c6a1dd73h][35] = {0f 1f 44 00 00 8b c1 41 23 c0 f7 d0 83 e0 01 41 0b c8 f7 d1 83 e1 01 23 c2 f7 d2 23 d1 0b c2 83 e0 01 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:36:900
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0012h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0014h and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
001bh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
