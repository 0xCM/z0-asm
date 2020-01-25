; ulong dist(long a, long b)
; dist_64i[7ff7c719bc40h, 7ff7c719bc58h][24] = {0f 1f 44 00 00 48 3b ca 7d 07 48 8b c2 48 2b c1 c3 48 2b ca 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:634
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jge short 0011h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
