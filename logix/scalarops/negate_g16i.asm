; Int16 negate<Int16>(Int16 a)
; negate_g16i[7ff7c6ca4870h, 7ff7c6ca4880h][16] = {0f 1f 44 00 00 48 0f bf c1 f7 d8 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:074
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
