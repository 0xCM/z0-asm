; long f3c<long>(long a, long b, long c)
; X3C_g64i[7ff7c6b92bb0h, 7ff7c6b92bbch][12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:964
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
