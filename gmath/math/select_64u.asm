; ulong select(ulong a, ulong b, ulong c)
; select_64u[7ff7c7198f50h, 7ff7c7198f64h][20] = {0f 1f 44 00 00 48 23 d1 48 8b c2 c4 c2 f0 f2 d0 48 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:220
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh andn rdx,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 d0}
0010h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
