; uint add<uint>(uint a, uint b)
; add_g32u[7ff7c6ca3750h, 7ff7c6ca375ah][10] = {0f 1f 44 00 00 03 d1 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:689
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
