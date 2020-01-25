; uint xornot<uint>(uint a, uint b)
; xornot_g32u[7ff7c6ca16e0h, 7ff7c6ca16ech][12] = {0f 1f 44 00 00 8b c2 f7 d0 33 c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:539
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
