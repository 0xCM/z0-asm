; Int16 dec(Int16 src)
; dec_16i[7ff7c7188c20h, 7ff7c7188c34h][20] = {0f 1f 44 00 00 48 0f bf c1 ff c8 48 0f bf c0 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:354
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
