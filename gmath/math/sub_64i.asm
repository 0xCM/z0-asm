; long sub(long a, long b)
; sub_64i[7ff7c719ab90h, 7ff7c719ab9ch][12] = {0f 1f 44 00 00 48 8b c1 48 2b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:504
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
