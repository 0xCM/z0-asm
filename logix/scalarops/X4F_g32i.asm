; int f4f<int>(int a, int b, int c)
; X4F_g32i[7ff7c6b94fc0h, 7ff7c6b94fd1h][17] = {0f 1f 44 00 00 8b c1 f7 d0 c4 e2 38 f2 d2 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:234
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h andn edx,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 d2}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
