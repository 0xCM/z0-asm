; uint f5b<uint>(uint a, uint b, uint c)
; X5B_g32u[7ff7c6b9d0b0h, 7ff7c6b9d0c2h][18] = {0f 1f 44 00 00 44 33 c1 0b d1 8b c2 f7 d0 41 0b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:445
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor r8d,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 c1}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
