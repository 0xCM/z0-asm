; uint f0b<uint>(uint a, uint b, uint c)
; X0B_g32u[7ff7c6cc5210h, 7ff7c6cc5221h][17] = {0f 1f 44 00 00 8b c1 f7 d0 f7 d2 41 0b d0 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:771
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000bh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
