; BitVector<long> true<long>(BitVector<long> x, BitVector<long> y)
; true_g[7ff7c6b75a80h, 7ff7c6b75a9ah][26] = {0f 1f 44 00 00 48 89 4c 24 08 48 89 54 24 10 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:39:187
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
