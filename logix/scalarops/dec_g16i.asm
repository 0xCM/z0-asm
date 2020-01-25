; Int16 dec<Int16>(Int16 a)
; dec_g16i[7ff7c6ca4e80h, 7ff7c6ca4e90h][16] = {0f 1f 44 00 00 48 0f bf c1 ff c8 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:092
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
