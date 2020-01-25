; Int16 f30<Int16>(Int16 a, Int16 b, Int16 c)
; X30_g16i[7ff7c6b91420h, 7ff7c6b91437h][23] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 c4 e2 68 f2 c0 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:575
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
