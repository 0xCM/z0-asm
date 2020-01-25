; uint f55<uint>(uint a, uint b, uint c)
; X55_g32u[7ff7c6b9c7f0h, 7ff7c6b9c7fbh][11] = {0f 1f 44 00 00 41 8b c0 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:350
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
