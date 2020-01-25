; sbyte right<sbyte>(sbyte a, sbyte b)
; rproject_g8i[7ff7c6ca0e40h, 7ff7c6ca0e4ah][10] = {0f 1f 44 00 00 48 0f be c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:471
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
