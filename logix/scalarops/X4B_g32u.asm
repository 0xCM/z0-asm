; uint f4b<uint>(uint a, uint b, uint c)
; X4B_g32u[7ff7c6b94490h, 7ff7c6b9449fh][15] = {0f 1f 44 00 00 8b c2 f7 d0 41 0b c0 33 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:179
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
