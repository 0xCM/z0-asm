; uint f08<uint>(uint a, uint b, uint c)
; X08_g32u[7ff7c6cc4d80h, 7ff7c6cc4d8fh][15] = {0f 1f 44 00 00 8b c1 f7 d0 23 c2 41 23 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:726
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
