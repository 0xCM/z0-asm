; sbyte left<sbyte>(sbyte a, sbyte b)
; lproject_g8i[7ff7c6ca0d40h, 7ff7c6ca0d4ah][10] = {0f 1f 44 00 00 48 0f be c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:458
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
