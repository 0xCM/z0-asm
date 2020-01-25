; uint f31<uint>(uint a, uint b, uint c)
; X31_g32u[7ff7c6b915d0h, 7ff7c6b915e3h][19] = {0f 1f 44 00 00 8b c2 f7 d0 41 8b d0 f7 d2 0b d1 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:590
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000ch not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000eh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0010h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
