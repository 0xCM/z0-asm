; uint nor<uint>(uint a, uint b)
; nor_g32u[7ff7c71916b0h, 7ff7c71916bch][12] = {0f 1f 44 00 00 0b d1 8b c2 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:933
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
