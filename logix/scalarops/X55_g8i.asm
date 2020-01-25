; sbyte f55<sbyte>(sbyte a, sbyte b, sbyte c)
; X55_g8i[7ff7c6b9c790h, 7ff7c6b9c7a0h][16] = {0f 1f 44 00 00 49 0f be c0 f7 d0 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:40:341
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
