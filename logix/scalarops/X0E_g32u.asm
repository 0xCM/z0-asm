; uint f0e<uint>(uint a, uint b, uint c)
; X0E_g32u[7ff7c6cc5760h, 7ff7c6cc576fh][15] = {0f 1f 44 00 00 8b c1 f7 d0 41 0b d0 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:814
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
