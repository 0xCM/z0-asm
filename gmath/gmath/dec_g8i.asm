; sbyte dec<sbyte>(sbyte a)
; dec_g8i[7ff7c71a6ad0h, 7ff7c71a6ae0h][16] = {0f 1f 44 00 00 48 0f be c1 ff c8 48 0f be c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:58:209
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
