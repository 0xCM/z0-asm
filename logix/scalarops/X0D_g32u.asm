; uint f0d<uint>(uint a, uint b, uint c)
; X0D_g32u[7ff7c6ca6850h, 7ff7c6ca6863h][19] = {0f 1f 44 00 00 8b c1 f7 d0 41 8b c8 f7 d1 0b d1 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:286
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0010h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
