; sbyte left<sbyte>(sbyte a, sbyte b)
; left_g8i[7ff7c7191990h, 7ff7c719199ah][10] = {0f 1f 44 00 00 48 0f be c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:967
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
