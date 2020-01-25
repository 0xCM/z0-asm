; uint f36<uint>(uint a, uint b, uint c)
; X36_g32u[7ff7c6b921b0h, 7ff7c6b921bdh][13] = {0f 1f 44 00 00 41 0b c8 33 d1 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:653
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
