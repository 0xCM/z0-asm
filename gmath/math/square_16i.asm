; Int16 square(Int16 src)
; square_16i[7ff7c719a9c0h, 7ff7c719a9d1h][17] = {0f 1f 44 00 00 48 0f bf c1 0f af c0 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:487
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
