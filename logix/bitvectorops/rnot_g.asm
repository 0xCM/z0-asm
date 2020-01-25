; BitVector<long> rnot<long>(BitVector<long> x, BitVector<long> y)
; rnot_g[7ff7c6b67a70h, 7ff7c6b67a81h][17] = {0f 1f 44 00 00 48 89 4c 24 08 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:45:569
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
