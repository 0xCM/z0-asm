; Int16 left<Int16>(Int16 a, Int16 b)
; left_g16i[7ff7c71919d0h, 7ff7c71919dah][10] = {0f 1f 44 00 00 48 0f bf c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:969
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
