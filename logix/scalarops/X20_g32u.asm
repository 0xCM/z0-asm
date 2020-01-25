; uint f20<uint>(uint a, uint b, uint c)
; X20_g32u[7ff7c6b8f9f0h, 7ff7c6b8f9ffh][15] = {0f 1f 44 00 00 8b c2 f7 d0 23 c1 41 23 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:253
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
