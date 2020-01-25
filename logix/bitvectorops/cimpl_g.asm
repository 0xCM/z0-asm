; BitVector<long> cimpl<long>(BitVector<long> x, BitVector<long> y)
; cimpl_g[7ff7c6b77e10h, 7ff7c6b77e1fh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 0b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:39:384
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
