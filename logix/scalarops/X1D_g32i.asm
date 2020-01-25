; int f1d<int>(int a, int b, int c)
; X1D_g32i[7ff7c6b8f5e0h, 7ff7c6b8f5f8h][24] = {0f 1f 44 00 00 8b c1 f7 d0 41 8b c8 f7 d1 23 c2 c4 e2 68 f2 d1 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:216
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h andn edx,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 d1}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
