; int f16<int>(int a, int b, int c)
; X16_g32i[7ff7c6b8e8a0h, 7ff7c6b8e8b9h][25] = {0f 1f 44 00 00 8b c2 41 0b c0 f7 d0 41 33 d0 23 c1 c4 e2 70 f2 d2 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:106
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000fh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0011h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
