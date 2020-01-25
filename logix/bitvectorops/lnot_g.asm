; BitVector<long> lnot<long>(BitVector<long> x, BitVector<long> y)
; lnot_g[7ff7c6b677c0h, 7ff7c6b677d1h][17] = {0f 1f 44 00 00 48 89 54 24 10 48 8b c1 48 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:45:561
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
