; BitVector<long> right<long>(BitVector<long> x, BitVector<long> y)
; rproject_g[7ff7c6b67520h, 7ff7c6b6752eh][14] = {0f 1f 44 00 00 48 89 4c 24 08 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:45:552
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
