; uint or<uint>(uint a, uint b)
; or_g32u[7ff7c6ba7130h, 7ff7c6ba713ah][10] = {0f 1f 44 00 00 0b d1 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:219
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
