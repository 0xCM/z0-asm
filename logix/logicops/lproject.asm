; bit left(bit a, bit b)
; lproject[7ff7c6a1f080h, 7ff7c6a1f08ch][12] = {0f 1f 44 00 00 89 54 24 10 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:42:806
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
