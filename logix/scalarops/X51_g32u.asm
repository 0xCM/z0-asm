; uint f51<uint>(uint a, uint b, uint c)
; X51_g32u[7ff7c6b8c150h, 7ff7c6b8c161h][17] = {0f 1f 44 00 00 41 8b c0 f7 d0 f7 d2 0b d1 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:369
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
