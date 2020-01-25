; long xor(long a, long b)
; xor_64i[7ff7c7199340h, 7ff7c719934ch][12] = {0f 1f 44 00 00 48 8b c1 48 33 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:253
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
