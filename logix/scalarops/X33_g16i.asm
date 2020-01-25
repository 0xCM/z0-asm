; Int16 f33<Int16>(Int16 a, Int16 b, Int16 c)
; X33_g16i[7ff7c6ba1880h, 7ff7c6ba1890h][16] = {0f 1f 44 00 00 48 0f bf c2 f7 d0 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:41:380
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
