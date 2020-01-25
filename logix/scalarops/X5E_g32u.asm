; uint f5e<uint>(uint a, uint b, uint c)
; X5E_g32u[7ff7c6b9d630h, 7ff7c6b9d642h][18] = {0f 1f 44 00 00 41 8b c0 f7 d0 23 c2 41 33 c8 0b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:492
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000ch xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000fh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
