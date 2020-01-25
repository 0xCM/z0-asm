; Int16 div<Int16>(Int16 a, Int16 b)
; div_g16i[7ff7c6ca41c0h, 7ff7c6ca41d9h][25] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf ca 48 0f bf c0 99 f7 f9 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:046
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0012h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0014h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
