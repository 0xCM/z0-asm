; sbyte mod<sbyte>(sbyte a, sbyte b)
; mod_g8i[7ff7c6ca42c0h, 7ff7c6ca42d5h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be ca 99 f7 f9 48 0f be c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:062
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
