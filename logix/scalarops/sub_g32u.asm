; uint sub<uint>(uint a, uint b)
; sub_g32u[7ff7c6cc29d0h, 7ff7c6cc29dah][10] = {0f 1f 44 00 00 2b ca 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:526
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
