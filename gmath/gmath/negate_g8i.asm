; sbyte negate<sbyte>(sbyte src)
; negate_g8i[7ff7c7196100h, 7ff7c7196110h][16] = {0f 1f 44 00 00 48 0f be c1 f7 d8 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:338
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
