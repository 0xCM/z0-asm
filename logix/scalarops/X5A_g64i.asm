; long f5a<long>(long a, long b, long c)
; X5A_g64i[7ff7c6b9cf50h, 7ff7c6b9cf5ch][12] = {0f 1f 44 00 00 49 33 c8 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:40:431
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
