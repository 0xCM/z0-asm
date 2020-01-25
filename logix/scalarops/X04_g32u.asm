; uint f04<uint>(uint a, uint b, uint c)
; X04_g32u[7ff7c6ca5a90h, 7ff7c6ca5a9fh][15] = {0f 1f 44 00 00 41 0b c8 8b c1 f7 d0 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:172
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
