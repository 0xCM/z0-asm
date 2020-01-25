; uint and(uint a, uint b)
; and_32u[7ff7c7187e90h, 7ff7c7187e9ah][10] = {0f 1f 44 00 00 8b c1 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:249
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
