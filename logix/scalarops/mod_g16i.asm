; Int16 mod<Int16>(Int16 a, Int16 b)
; mod_g16i[7ff7c6ca4320h, 7ff7c6ca4335h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf ca 99 f7 f9 48 0f bf c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:065
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
