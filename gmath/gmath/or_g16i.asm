; Int16 or<Int16>(Int16 a, Int16 b)
; or_g16i[7ff7c71a4a70h, 7ff7c71a4a84h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0b c2 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:804
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
